#include <avr/sleep.h>       // Include the sleep library
#include <avr/interrupt.h>   // Include for interrupt handling

// Pin Definitions
const int buttonPin = 3;     // Pin connected to the button (PA2)
const int ledPin = 4;        // Pin connected to the LED (PA3)
const int piezoPin = 1;      // Pin connected to the Piezo (PA7)

// Variables
volatile bool wakeUpFlag = false;  // Flag to indicate wake-up from sleep
bool alarmState = false;           // Current state of the alarm
unsigned long lastInterruptTime = 0; // Debounce timer for ISR

void setup() {
  pinMode(buttonPin, INPUT_PULLUP); // Set button pin as input with pull-up resistor
  pinMode(ledPin, OUTPUT);          // Set LED pin as output
  pinMode(piezoPin, OUTPUT);        // Set Piezo pin as output
  digitalWrite(ledPin, LOW);        // Initialize LED to off
  digitalWrite(piezoPin, LOW);      // Initialize Piezo to off

  // Enable interrupts on PA2 (buttonPin)
  PORTA.PIN2CTRL = PORT_PULLUPEN_bm | PORT_ISC_BOTHEDGES_gc; // Enable pull-up and interrupt on both edges
  sei(); // Enable global interrupts
}

void loop() {
  if (wakeUpFlag) {
    wakeUpFlag = false; // Clear the flag
    PORTA.PIN2CTRL = PORT_PULLUPEN_bm | PORT_ISC_BOTHEDGES_gc; // Re-enable interrupt
  }

  checkButtonHold();

  // Alarm state handling
  if (alarmState) {
    alarmTone();
    digitalWrite(ledPin, HIGH);
  } else {
    noTone(piezoPin);
    digitalWrite(ledPin, LOW);
  }

  // Enter sleep mode
  if (!alarmState && !isButtonPressed()) {
    enterSleepMode();
  }
}

bool isButtonPressed() {
  return digitalRead(buttonPin) == LOW;
}

void checkButtonHold() {
  static unsigned long pressStartTime = 0;
  static bool longPressDetected = false;

  if (isButtonPressed()) {
    if (pressStartTime == 0) {
      pressStartTime = millis();
    } else if (millis() - pressStartTime > 3000 && !longPressDetected) {
      alarmState = !alarmState; // Toggle alarm state
      longPressDetected = true; // Prevent repeated toggling
    }
  } else {
    pressStartTime = 0;         // Reset timer
    longPressDetected = false;  // Allow re-detection
  }
}

void alarmTone() {
  static unsigned long previousToneMillis = 0;
  static unsigned long silenceStartMillis = 0;
  const unsigned long toneDuration = 2000; // Duration for the tone (in ms)
  const unsigned long silenceDuration = 500; // Duration for silence (in ms)
  const unsigned long toneInterval = 0.6; // Interval for tone update (in ms)
  static int x = 0;
  static bool isToneActive = true; // Whether tone is currently active

  unsigned long currentMillis = millis();
  
  if (isToneActive) {
    if (currentMillis - silenceStartMillis >= toneDuration) {
      noTone(piezoPin);
      isToneActive = false;
      silenceStartMillis = currentMillis;
    } else if (currentMillis - previousToneMillis >= toneInterval) {
      previousToneMillis = currentMillis;
      float sinVal = sin(x * (3.1412 / 180));
      int toneVal = 3950 + (int(sinVal * 200));
      tone(piezoPin, toneVal);
      x = (x + 1) % 360;
    }
  } else {
    if (currentMillis - silenceStartMillis >= silenceDuration) {
      isToneActive = true;
      silenceStartMillis = currentMillis;
    }
  }
}

void enterSleepMode() {
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  sleep_enable();
  sleep_cpu();
  sleep_disable();
}

// Interrupt Service Routine for pin change on PA2
ISR(PORTA_PORT_vect) {
  unsigned long currentInterruptTime = millis();
  if (currentInterruptTime - lastInterruptTime > 50) { // Debounce 50ms
    PORTA.INTFLAGS = PORT_INT2_bm; // Clear interrupt flag
    wakeUpFlag = true;
    lastInterruptTime = currentInterruptTime;
  }
}
