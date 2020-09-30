void setup() {
  frameRate(12);
  size(1000, 1000);
  smooth();}
  
int rectWidth = 500;
int rectHeight = 200;

int step = 150; 
//the step variable decreases the difference in opacity with every level, thus making the game progressively harder



int r1,r2,r3,d,r,g,b; 
//r1, r2, r3 help the constructor create the three rectangles with a randomly chosen rectangle with a slight color shift
//d is a global variable that allows draw() to access p - the random integer between 1, 2, and 3. p is a local variable in mainGame()
//r,g,b are color values for the rectangles


boolean progress = true;
//helps check for game end condition

void mainGame(){
  int p = int(random(1,4));
  d = p;
  
  int red = int(random(1,256));
  int green = int(random(1,256));
  int blue = int(random(1,256));
  r = red;
  g = green;
  b = blue;

  if (p==1){
     r1 = 0;
     r2 = 1;
     r3 = 1;}
  if (p==2){
     r1 = 1;
     r2 = 0;
     r3 = 1;}
  if (p==3){
     r1 = 1;
     r2 = 1;
     r3 = 0;}}
//instead of relying on p for randomized order, we use p's random values to hardcode our permuations in a binary format. Not elegant, but it works.
     
void clickChecker(){
  if (d==1){
     if(mousePressed == true)if(mouseX<750)if(mouseX>250)if(mouseY<300)if(mouseY>100){
       progress = true;}}
  if (d==2){
     if(mousePressed == true)if(mouseX<750)if(mouseX>250)if(mouseY<600)if(mouseY>400){
       progress = true;}}
  if (d==3){
     if(mousePressed == true)if(mouseX<750)if(mouseX>250)if(mouseY<900)if(mouseY>700){
       progress = true;}}
//checks to see if correct clicks are made, changes boolean progress accordingly to make the game move forward       
}

   
class game {
  float x, y, rw, rh, s;
 
  game(float xpos, float ypos, float colorSchemePicker) {
    x = xpos; 
    y = ypos;
    rw = rectWidth;
    rh = rectHeight;
    s = colorSchemePicker;
  }
    
  void drawRect(){
    if (s == 0){      
      fill(r,g,b, 255-step);
      rect(x,y,rw,rh,7);}
    if (s == 1){      
      fill(r,g,b, 255);
      rect(x,y,rw,rh,7);}
//we fill the rectangles with the relevant color scheme using the binary permutations made earlier
  }
}

void draw(){ 

  if (progress == true) if (step!=0){
    mainGame();
    int levelCounter = ((150-step)/10)+1; //counts levels as a function of the step variable 
    game rect1 = new game(250,125,r1);
    game rect2 = new game(250,425,r2);
    game rect3 = new game(250,725,r3);
    background(255);
    fill(0);
    textAlign(CENTER);
    text("Level: "+str(levelCounter)+"/14",825,100);    
    text("Click on the rectangle with the different color.",width/2,100);
    rect1.drawRect();
    rect2.drawRect();
    rect3.drawRect();
    step-=10;
    progress = false;}
  clickChecker();
  if (step==0){
    background(255);
    fill(0);
    textAlign(CENTER);
    text("Congratulations, you have beaten the game!", width/2,height/2);}
}
