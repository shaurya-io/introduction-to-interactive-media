float x = 1500;
float y = 1500;
float h = 100;
float k = 100;
float mobilityself;
float mobilityopp;
float myDia;
float opponentDia;
float foodRadius = 10;
ArrayList<PVector> food = new ArrayList<PVector>();

boolean gameOver = false;
boolean gameStart = false;
boolean gameWin = false;
boolean gameLoss = false;

PImage wallpaper;

int foodNum = 100;

void setup(){
  size(1000,1000);
  
  noStroke();
  wallpaper = loadImage("Screen Shot 2020-10-29 at 2.09.06 PM.png");
  myDia = 50;
  opponentDia = 100;
  mobilityself = 0.5;
  mobilityopp = 0.1;
  for (int i = 0; i<1000*foodNum;i++){
    food.add(new PVector(random(0,width),random(0,height)));}
}

void gameStates(){
  if (dist(x,y,h,k)<0.5*(myDia+opponentDia))if(myDia!=opponentDia){
    gameOver = true;}  
  if (key == ENTER){
    gameStart = true;}
  if (gameOver==true)if(myDia>opponentDia){
    gameWin = true;}
  if (gameOver==true)if(opponentDia>myDia){
    gameLoss = true;}
  if (key == 'R' || key == 'r'){
    gameOver = false;
    gameStart = true;
    myDia = 50;
    opponentDia = 100;
    }
    
    
}
void myCircle(){
  fill(255);
  circle(x,y,myDia);
  float dirX = mouseX - x;
  x += dirX*mobilityself;
  float dirY = mouseY - y;
  y += dirY*mobilityself;
  }

void populate(){
  for (int i = 0; i<foodNum;i++)
    if (dist(x,y,food.get(i).x, food.get(i).y)>myDia+100){
          if (dist(h,k,food.get(i).x, food.get(i).y)>opponentDia+100){
              fill(int(random(0,256)),int(random(0,256)),int(random(0,256)));
               circle(food.get(i).x, food.get(i).y, foodRadius);}}

}

void eatFood(){
  for (int i = 0; i<foodNum;i++){
    if(dist(x,y,food.get(i).x,food.get(i).y)<(myDia+foodRadius)){
      food.remove(i);
      myDia = sqrt((myDia*myDia)+(foodRadius*foodRadius));
      mobilityself = 0.99*mobilityself;}
   
    if(dist(h,k,food.get(i).x,food.get(i).y)<(opponentDia+foodRadius)){
      food.remove(i);
      opponentDia = sqrt((opponentDia*opponentDia)+(foodRadius*foodRadius));
      mobilityopp = 0.99*mobilityopp;}
  }
}

void opponent(){
  fill(255,0,0);
  circle(h,k,opponentDia);
  float dirXo;
  float dirYo;
  float minDistance = dist(h,k,food.get(0).x,food.get(0).y);
  int foodindex = 0;
  for (int i = 0; i<foodNum;i++){
    if (dist(h,k,food.get(i).x,food.get(i).y)<minDistance){
      minDistance = dist(h,k,food.get(i).x,food.get(i).y);
      foodindex = i;}
  }
  if (myDia > opponentDia){
    dirXo = food.get(foodindex).x - h;
    h += dirXo*mobilityopp;
    dirYo = food.get(foodindex).y - k;
    k += dirYo*mobilityopp;}
  if (myDia <= opponentDia){
    dirXo = x - h;
    h += dirXo*mobilityopp;
    dirYo = y - k;
    k += dirYo*mobilityopp;}
    
}
    
      

  

void draw(){
    stroke(255);
    fill(0);
    gameStates();
    print(gameOver);
//    print(gameStart);
if (gameStart==false){
    background(0);
    image(wallpaper, 0,0);
    textSize(20);
    
    textAlign(LEFT);
    stroke(0);
    text("Welcome to Shaurya's Recreation of Agar.io.",width/8,height/8);
    text("The Rules are simple.",width/8,height/4);
    text("You are the white body. Your opponent is the red body.",width/8, 3*height/8);
    text("Eat more food, grow bigger than your opponent and eat them to win. Else, be eaten.", width/8,height/2);
    text("May the best blob win. Press ENTER to play.", width/8,5*height/8);
}

  
if (gameOver == false)if((gameStart == true)){
    gameStates();
    background(0);
    populate();
    eatFood();
    myCircle();
    opponent();}

if (gameOver==true)if(gameWin==true){
    background(0);
    fill(255);
    textAlign(CENTER);
    text("Congratulations. You win. Press R to Restart.", width/2, height/2);}
if (gameOver==true)if(gameLoss==true){
    background(0);
    fill(255);
    textAlign(CENTER);
    text("Oops. You were eaten. Press R to Restart.", width/2, height/2);}
  
}
