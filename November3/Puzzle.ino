/*This code was written by Shaurya Singh, NYUAD Class of 2023 as part of the Introduction to Interactive Media Course 
 * at NYU Abu Dhabi in Fall 2020.
 */


int redButton = 4;
int greenButton = 3; //initializing pin numbers for LEDs and buttons 
int blueButton = 2;
int red = 13;
int green = 12;
int blue = 11;
int flickerOrder[5]; //creating an array to store the random LED flicker pattern 
static int flickerTotal = 0; //the flickerTotal and pressTotal variables are compared to calculate if user entered the correct pattern 
static int pressTotal = 0;
boolean correct = false;
boolean flickeryes = true;
byte count = 0;

// the setup routine runs once when you press reset:
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);

  pinMode(redButton, INPUT);
  pinMode(greenButton, INPUT);
  pinMode(blueButton, INPUT);  //setting the INPUT and OUTPUT properties for the board 
  pinMode(red,OUTPUT);
  pinMode(green,OUTPUT);
  pinMode(blue,OUTPUT);


}

  
void flicker(){
  while (flickeryes == true){
    for(int i=0; i<5;i++){    //populating the flickerOrder array 
      
      flickerOrder[i] = random(1,4);
      flickerTotal += (i+1)*flickerOrder[i];
}

    
  
    for(int i=0; i<5;i++){
      if (flickerOrder[i]==1){
        digitalWrite(red, HIGH);
        delay(500);
        digitalWrite(red, LOW);
        delay(500);}
      if (flickerOrder[i]==2){      //making the LEDs flicker according to the flickerOrder array 
        digitalWrite(green, HIGH);
        delay(500);
        digitalWrite(green, LOW);
        delay(500);}
      if (flickerOrder[i]==3){
        digitalWrite(blue, HIGH);
        delay(500);
        digitalWrite(blue, LOW);
        delay(500);}
  }
     flickeryes = false;
}
}

void pressChecker(){ //this function makes LEDs light up corresponding to their button press and calculates if the user entered
                     //the correct pattern 


  while (flickeryes == false){
    
    int redState = digitalRead(redButton);
    int greenState = digitalRead(greenButton);
    int blueState = digitalRead(blueButton);   //reading the INPUT buttons 

  
    if (redState == HIGH){
      count++;
      pressTotal += count*1;
      digitalWrite(red, HIGH);
      delay(250);
      digitalWrite(red, LOW);}
    if (greenState == HIGH){
      count++;
      pressTotal += count*2;    //the count and pressTotal variables allow the code to calculate a mathematical value for every 
      digitalWrite(green, HIGH);//button press, which can then be added and compared to the flickerTotal variable to see if the user 
      delay(250);               //got the pattern right
      digitalWrite(green, LOW);}
    if (blueState == HIGH){
      count++;
      pressTotal += count*3;
      digitalWrite(blue, HIGH);
      delay(250);
      digitalWrite(blue, LOW);} 
   

  if (count==5){
    if(flickerTotal == pressTotal){
    digitalWrite(red, HIGH);
    digitalWrite(green, HIGH);
    digitalWrite(blue, HIGH);    //puzzle-solving condition 
    delay(3000);
    digitalWrite(red, LOW);
    digitalWrite(green, LOW);
    digitalWrite(blue, LOW);
    flickeryes = true;}
  }
}}


// the loop routine runs over and over again forever:
void loop() {
  flicker();
  pressChecker();



 
