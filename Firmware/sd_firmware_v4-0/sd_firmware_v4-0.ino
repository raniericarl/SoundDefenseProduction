#include <avr/sleep.h>       // Include the sleep library
#include <avr/interrupt.h>   // Include for interrupt handling

// Pin Definitions
const int buttonPin = 3;     // Pin connected to the button (PA2)
const int ledPin = 4;        // Pin connected to the LED (PA3)
const int piezoPin = 1;      // Pin connected to the Piezo (PA7)

// Variables
volatile bool wakeUpFlag = false;  // Flag to indicate wake-up from sleep
bool alarmState = false;           // Current state of the alarm
unsigned long buttonPressTime = 0; // Tracks when the button was first pressed
bool buttonHeld = false;           // Tracks if the button is held long enough
unsigned long wakeUpMillis = 0;    // Time when the device wakes up
const unsigned long wakeUpDebounce = 100; // Time to wait after wake-up (in ms)

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
  // Check the wake-up flag
  if (wakeUpFlag) {
    wakeUpFlag = false; // Clear the flag
    wakeUpMillis = millis(); // Record the time of wake-up
  }

  // Delay after wake-up to process button inputs
  if (millis() - wakeUpMillis < wakeUpDebounce) {
    return;
  }

  // Check button state
  if (digitalRead(buttonPin) == LOW) { // Button is pressed
    if (buttonPressTime == 0) {
      buttonPressTime = millis(); // Record the time the button was first pressed
    }
    
    // Check if the button is held for  seconds
    if (!buttonHeld && millis() - buttonPressTime >= 2000) {
      buttonHeld = true;          // Mark as held
      alarmState = !alarmState;   // Toggle the alarm state
    }
  } else { // Button is released
    buttonPressTime = 0;          // Reset the press time
    buttonHeld = false;           // Reset the held state
  }

  // Play Alarm
  if (alarmState) {
    alarmTone();
    digitalWrite(ledPin, HIGH);
  } else {
    noTone(piezoPin);
    digitalWrite(ledPin, LOW);
  }

  // Enter sleep mode if conditions are met
  if (!alarmState && digitalRead(buttonPin) == HIGH && millis() - wakeUpMillis >= wakeUpDebounce) {
    enterSleepMode();
  }
}

void alarmTone() {
  static unsigned long previousToneMillis = 0;
  static unsigned long silenceStartMillis = 0;
  const unsigned long toneDuration = 2000; // Duration for the tone (in ms)
  const unsigned long silenceDuration = 500; // Duration for silence (in ms)
  const unsigned long toneInterval = 1; // Interval for tone update (in ms)
  static int x = 0;
  static bool isToneActive = true; // Whether tone is currently active

  unsigned long currentMillis = millis();
  
  if (isToneActive) {
    // Check if it's time to stop the tone
    if (currentMillis - silenceStartMillis >= toneDuration) {
      noTone(piezoPin); // Stop the tone
      isToneActive = false; // Switch to silence period
      silenceStartMillis = currentMillis; // Mark silence start time
    } else if (currentMillis - previousToneMillis >= toneInterval) {
      previousToneMillis = currentMillis;

      // Generate sine wave tone between 3700 Hz and 4200 Hz
      float sinVal = sin(x * (3.1412 / 180)); // x is in degrees
      int toneVal = 3950 + (int(sinVal * 200)); // Center at 3950 Hz, amplitude 250 Hz
      tone(piezoPin, toneVal);

      x++;
      if (x >= 360) {
        x = 0;
      }
    }
  } else {
    // Check if silence period is over
    if (currentMillis - silenceStartMillis >= silenceDuration) {
      isToneActive = true; // Switch back to tone generation
      silenceStartMillis = currentMillis; // Mark tone start time
    }
  }
}

void enterSleepMode() {
  set_sleep_mode(SLEEP_MODE_PWR_DOWN); // Set the desired sleep mode
  sleep_enable();                      // Enable sleep mode
  sleep_cpu();                         // Enter sleep mode

  // Execution continues here after waking up
  sleep_disable();                     // Disable sleep mode after waking up
}

// Interrupt Service Routine for pin change on PA2
ISR(PORTA_PORT_vect) {
  // Clear interrupt flag for PA2
  PORTA.INTFLAGS = PORT_INT2_bm;
  // Set wake-up flag
  wakeUpFlag = true;
}
