/*This code was written by Shaurya Singh, NYUAD Class of 2023 as part of the Introduction to Interactive Media Course 
 * at NYU Abu Dhabi in Fall 2020.
 */
 
#include <Servo.h>. // Including the servo library 


const int trig = 10; // pins connected to the sonic sensor
const int echo = 11;

long timeGap;
int dist;
int LED[] = {7, 8, 9};  // initializaing arrays for pins connected to 3 LEDs and 3 buttons
int Button[] = {4, 5, 6};
int pattern[3]; // array to store the pattern 
int counter;



Servo myServo; 

void setup() {
  pinMode(trig, OUTPUT); 
  pinMode(echo, INPUT);  // assigning input and output status to different pins used 
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(13, OUTPUT);

  pinMode(3, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
  pinMode(6, INPUT);
  Serial.begin(9600);
  myServo.attach(12); // servo motor attached to pin 12 
}
void loop() {
  createPattern();  // functions to create a new pattern on the puzzle, check for correct button presses, and check for win condition + restart
  pressChecker();
  checkWin();

  for(int i=15;i<=165;i++){  // making the servo motor sweep an area from 15 degrees to 165 degrees
  myServo.write(i);
  delay(30);
  dist = howFar(); // calculating distance using the howfar() function 
  if ((dist < 30) && (digitalRead(3) == LOW)){ // if failsafe button(3) is not pressed, ring alarm 
    tone(13, 800, 5000);}
  Serial.print(i); 
  Serial.print(","); // sending required values to the serial channel to communicate with processing 
  Serial.print(dist);
  Serial.print(".");}
  
  createPattern();
  pressChecker();
  checkWin();

  for(int i=165;i>15;i--){  // same logic - code to bring the servo motor back in the opposite direction 
  myServo.write(i);
  delay(30);
  dist = howFar();
  if ((dist < 30) && (digitalRead(3) == LOW)){
    tone(13, 800, 5000);}
  Serial.print(i);
  Serial.print(",");
  Serial.print(dist); // same as the first iteration above 
  Serial.print(".");
  }
  
}

int howFar(){ 
  
  digitalWrite(trig, LOW); 
  delayMicroseconds(2);
  digitalWrite(trig, HIGH);  // sends a pulse for 10 microseconds and then measures distance 
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  timeGap = pulseIn(echo, HIGH);
  dist= timeGap*0.034/2;
  return dist;
}

void createPattern() {
  for (int i = 0; i<3; i++) {
    pattern[i] = int(random(0, 2));
    digitalWrite(LED[i], pattern[i]); // populates the pattern array and flashes the LEDs
    delay(200);}}


void pressChecker() {
  for (int i = 0; i < 3; i++) {
    if (digitalRead(Button[i])==pattern[i]) { 
      counter++;
      return;   // compares the button presses against the pattern array to determine the score 

}}}



void checkWin() {
  if (counter == 7) {
    tone(13, 100, 5000); // if you win, the buzzer buzzes for 5s in a low-pitched noise - you have diffused the bomb 
  }
  if (digitalRead(Button[0]) && digitalRead(Button[1]) && digitalRead(Button[2])){ // restart by pressing all 3 buttons at once 
    for(int i = 0; i<3;i++){
    digitalWrite(LED[i], 1); // all LEDs flash for half a second, indicating a restart 
    delay(500);
    digitalWrite(LED[i], 0);}
    createPattern();
    counter = 0; // game variables are reset to zero and a new pattern is generated 
  }}
  
