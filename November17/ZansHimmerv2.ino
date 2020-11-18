/*This code was written by Shaurya Singh, NYUAD Class of 2023 as part of the Introduction to Interactive Media Course 
 * at NYU Abu Dhabi in Fall 2020.
 */
 
#include "pitches.h"
int trig = 3;
int echo = 2;
long duration;
long distance;
int buttonPress;

int melodyA[] = {NOTE_A1, NOTE_E5, NOTE_A1, NOTE_E5};
int melodyB[] = {NOTE_B2, NOTE_E5, NOTE_B2, NOTE_E5};
int melodyC[] = {NOTE_C3, NOTE_E5, NOTE_C3, NOTE_E5};
int melodyD[] = {NOTE_D4, NOTE_E5, NOTE_D4, NOTE_E5};

void setup() {
  pinMode(echo, INPUT);

  pinMode(trig, OUTPUT);

  Serial.begin(9600);
}

void loop() {

  digitalWrite(trig, LOW); //sends a pulse and reads time taken to register the echo
  delayMicroseconds(2);
  digitalWrite(trig, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  duration = pulseIn(echo, HIGH);
  distance = (duration / 2) * .0344;    //formula to derive distance from speed and time, taking speed as 344m/s


  buttonPress = digitalRead(5); //monitoring button presses

  if (distance < 0 || distance > 35  || buttonPress == LOW) { //boundary conditions where no tone is played
    
    noTone(4); //dont play music

  }

  if ((buttonPress == HIGH)) {  //once button is pressed the piezo buzzer plays the array that corresponds to the distance value 

    int sound = map(distance, 0, 40, 0, 4);
    
    if (sound == 3){
    for (int i = 0; i < 4; i++) {
    tone(4,melodyA[i]);
    delay(500);}}

    if (sound == 2){
    for (int i = 0; i < 4; i++) {
    tone(4,melodyB[i]);
    delay(500);}}

    if (sound == 1){
    for (int i = 0; i < 4; i++) {
    tone(4,melodyC[i]);
    delay(500);}}

    if (sound == 0){
    for (int i = 0; i < 4; i++) {
    tone(4,melodyD[i]);
    delay(500);}} //call a certain note depending on distance
  }
}
