#include <avr/sleep.h>       // Include the sleep library
#include <avr/interrupt.h>   // Include for interrupt handling

// Pin Definitions
const int buttonPin = 3;     // Pin connected to the button (PA2)
const int ledPin = 4;        // Pin connected to the LED (PA3)
const int piezoPin = 1;      // Pin connected to the Piezo (PA7)

// Variables
bool alarmState = false;     // Current state of the alarm
unsigned long buttonPressTime = 0; // Tracks when the button was first pressed
bool buttonHeld = false;     // Tracks if the button is held long enough

// ALARM TONE PLAYING LOGISTICS
const unsigned long toneInterval = 0.6; // Interval between tone frequency updates in milliseconds was (0.6ms)
unsigned long previousMillis = 0;
int x = 0; // Variable to iterate over the sine wave values
float sinVal;
int toneVal;

void setup() {
  pinMode(buttonPin, INPUT_PULLUP); // Set button pin as input with pull-up resistor
  pinMode(ledPin, OUTPUT);          // Set LED pin as output
  pinMode(piezoPin, OUTPUT);        // Set Piezo pin as output
  pinMode(0, INPUT_PULLUP);         // Set Unused Pins HIGH for power savings at sleep
  pinMode(2, INPUT_PULLUP);
  pinMode(5, INPUT_PULLUP);
  digitalWrite(ledPin, LOW);        // Initialize LED to off
  digitalWrite(piezoPin, LOW);      // Initialize Piezo to off

  // Enable interrupts on PA2 (buttonPin)
  PORTA.PIN2CTRL = PORT_PULLUPEN_bm | PORT_ISC_BOTHEDGES_gc; // Enable pull-up and interrupt on both edges
  sei(); // Enable global interrupts
}

void loop() {
  // Check button state
  if (digitalRead(buttonPin) == LOW) { // Button is pressed
    if (buttonPressTime == 0) {
      buttonPressTime = millis(); // Record the time the button was first pressed
    }
    
    // Check if the button is held for 3 seconds
    if (!buttonHeld && millis() - buttonPressTime >= 3000) {
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
  if (!alarmState && digitalRead(buttonPin) == HIGH) {
    enterSleepMode();
  }
}

void alarmTone() {
  static unsigned long previousToneMillis = 0;
  static unsigned long previousDutyCycleMillis = 0;
  static int x = 0;
  static bool toneOn = true; // Flag to toggle tone state
  const unsigned long dutyCyclePeriod = 1000; // Total period for duty cycle (in ms)
  const float dutyCycle = 0.7; // Duty cycle as a fraction (e.g., 0.5 for 50%)

  unsigned long currentMillis = millis();

  // Update the tone frequency based on sine wave
  if (currentMillis - previousToneMillis >= toneInterval) {
    previousToneMillis = currentMillis;

    if (toneOn) {
      // Calculate the sine value and corresponding frequency
      float sinVal = sin(x * (3.1412 / 180));
      int toneVal = 3300 + (int(sinVal * 1000));
      tone(piezoPin, toneVal); // Play the tone at the calculated frequency
    }
    else {
      noTone(piezoPin);
    }

    // Increment the angle for the sine calculation
    x++;
    if (x >= 180) {
      x = 0;
    }
  }

  // Manage the ON/OFF state based on the duty cycle
  if (currentMillis - previousDutyCycleMillis >= dutyCyclePeriod) {
    previousDutyCycleMillis = currentMillis;
    toneOn = true; // Restart the duty cycle
  } else if (currentMillis - previousDutyCycleMillis >= dutyCyclePeriod * dutyCycle) {
    toneOn = false; // Turn OFF after the ON portion of the duty cycle
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

  // Wake up from sleep (execution resumes in loop)
}
