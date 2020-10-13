/* This project was made as a part of the Introduction to Interactive Media course at NYU Abu Dhabi,
taken in Fall 2020. 

It makes use of the PeasyCam library to enable 3D rotation with mouse drags, and zoom in/out using the mouse wheel.
This project uses the pixels of a given image to construct a 3D model where random lines mimicing the color of every pixel to create an artwork.
Shaurya Singh

*/
import peasy.*;
PeasyCam cam;

PImage mainPhoto;

void setup(){
  size(1000,1000,P3D);
  frameRate(30);
  cam = new PeasyCam(this,1500); //creating the cam object 

  mainPhoto = loadImage("imagecolor1.jpg");
  mainPhoto.loadPixels(); //loading the pixels[] array 
}

void draw(){
  background(0);
  fill(255);
  for(int x=0; x<mainPhoto.width; x++){ //this loop gets the color of every pixel 
    for(int y=0; y<mainPhoto.height; y++){ 
      int c = mainPhoto.pixels[x+y*mainPhoto.width];
      strokeWeight(1);
      stroke(c);
      float k = random(0,500); //randomizing the length of our lines 
      line(x-mainPhoto.width/2,y-mainPhoto.height/2,0,x-mainPhoto.width/2,y-mainPhoto.height/2,k); //making lines oscillate by k units over and below the x-axis
      line(x-mainPhoto.width/2,y-mainPhoto.height/2,0,x-mainPhoto.width/2,y-mainPhoto.height/2,-k);   
     }
  }
}   
      
