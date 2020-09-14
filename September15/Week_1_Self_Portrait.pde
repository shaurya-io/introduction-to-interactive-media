void setup() {
  size(500,650);
  background(255);}


void draw() {

  float s = 50;
  
 
  //elements for basic facial structure
  fill(180,140,100);
  quad(2*s,2.25*s,8*s,2.25*s,8*s,9*s,2*s,9*s);
  fill(75);
  quad(2*s,2.25*s,3.75*s,1.25*s,6.25*s,1.25*s,8*s,2.25*s);
  fill(176,130,80);
  quad(2*s,9*s,8*s,9*s,6.25*s,11.75*s,3.75*s,11.75*s);
  fill(146,107,64);
  triangle(2*s,2.25*s,2*s,9*s,1.6*s,5.6*s);
  triangle(8*s,2.25*s,8*s,9*s,8.4*s,5.6*s);
    
  //LEFT SIDE OF FACE
  fill(40,82,96);
  quad(4.25*s,5.5*s,4.75*s,6*s,4.25*s,6.25*s,3.75*s,5.75*s);
  fill(112,145,150);
  triangle(3.1*s,1.9*s,4.1*s,5.1*s,2.7*s,5*s);
  fill(0);
  quad(2.7*s,5*s,4.1*s,5.1*s,4.25*s,5.5*s,2.7*s,5.4*s);
  triangle(2.7*s,5*s,2.7*s,5.4*s,2.4*s,5.6*s);
  fill(120,115,115);
  quad(2.7*s,5.4*s,4.25*s,5.5*s,3.75*s,5.75*s,3*s,5.8*s);
  strokeWeight(3);
  line(4.15*s,6.35*s,3.75*s,6*s);
  line(3.75*s,6*s,3*s,6*s);
  line(3*s,6*s,2.75*s,6.2*s);
  strokeWeight(0.5);
  fill(0);
  arc(3.4*s,6*s,0.5*s,0.75*s,0,radians(180));
  triangle(4.5*s,8.25*s,4.6*s,8.4*s,4.45*s,8.45*s);
  fill(27,109,123);
  triangle(4.7*s,9*s,4.5*s,9.4*s,3.75*s,9.5*s);
  fill(252,247,183);
  triangle(3.75*s,9.5*s,4.5*s,9.4*s,4.45*s,9.8*s);
  fill(40,82,96);
  quad(2*s,6.75*s,2.8*s,8.2*s,2.8*s,10.3*s,2*s,7.75*s);
  fill(180);
  triangle(2.25*s,7.2*s,2.8*s,8.2*s,4.2*s,6.5*s);
  fill(180,140,100);
  quad(1.6*s,5.6*s,1.9*s,8*s,1.7*s,8.2*s,s,5.7*s);
  fill(27,109,123);
  triangle(1.7*s,8.2*s,s,5.7*s,s,7*s);
  fill(252,247,183);
  arc(s,6.35*s,0.5*s,1.3*s,radians(90),radians(270));
  
  
  //RIGHT SIDE OF FACE [X-COORDINATE OF LEFT-SIDE ELEMENTS REPLACED SUCH THAT X(R)=10-X(L)
  fill(40,82,96);
  quad(5.75*s,5.5*s,5.25*s,6*s,5.75*s,6.25*s,6.25*s,5.75*s);
  fill(112,145,150);
  triangle(6.9*s,1.9*s,5.9*s,5.1*s,7.3*s,5*s);
  fill(0);
  quad(7.3*s,5*s,5.9*s,5.1*s,5.75*s,5.5*s,7.3*s,5.4*s);
  triangle(7.3*s,5*s,7.3*s,5.4*s,7.6*s,5.6*s);
  fill(120,115,115);
  quad(7.3*s,5.4*s,5.75*s,5.5*s,6.25*s,5.75*s,7*s,5.8*s);
  strokeWeight(3);
  line(5.85*s,6.35*s,6.25*s,6*s);
  line(6.25*s,6*s,7*s,6*s);
  line(7*s,6*s,7.25*s,6.2*s);
  strokeWeight(0);
  fill(0);
  arc(6.6*s,6*s,0.5*s,0.75*s,0,radians(180));
  triangle(5.5*s,8.25*s,5.4*s,8.4*s,5.55*s,8.45*s);
  fill(27,109,123);
  triangle(5.3*s,9*s,5.5*s,9.4*s,6.25*s,9.5*s);
  fill(252,247,183);
  triangle(6.25*s,9.5*s,5.5*s,9.4*s,5.55*s,9.8*s);
  fill(40,82,96);
  quad(8*s,6.75*s,7.2*s,8.2*s,7.2*s,10.3*s,8*s,7.75*s);
  fill(180);
  triangle(7.75*s,7.2*s,7.2*s,8.2*s,5.8*s,6.5*s);
  fill(180,140,100);
  quad(8.4*s,5.6*s,8.1*s,8*s,8.3*s,8.2*s,9*s,5.7*s);
  fill(27,109,123);
  triangle(8.3*s,8.2*s,9*s,5.7*s,9*s,7*s);
  fill(252,247,183);
  arc(9*s,6.35*s,.5*s,1.3*s,radians(270),radians(450));
  
  
  //elements that lie on the line of symmetry 
  stroke(0,0,0);
  fill(72,68,65);
  quad(3.75*s,1.25*s,6.25*s,1.25*s,6.75*s,2.5*s,3.25*s,2.5*s);
  fill(195,195,195);
  quad(6.75*s,2.5*s,3.25*s,2.5*s,4.25*s,5.5*s,5.75*s,5.5*s);
  fill(176,172,179);
  quad(4.25*s,5.5*s,5.75*s,5.5*s,5.25*s,6*s,4.75*s,6*s);
  fill(195);
  quad(5.25*s,6*s,4.75*s,6*s,4.7*s,7.5*s,5.3*s,7.5*s);
  fill(255);
  quad(4.7*s,7.5*s,5.3*s,7.5*s,5.5*s,8*s,4.5*s,8*s);
  fill(115);
  triangle(4.5*s,8.25*s,5.5*s,8.25*s,5*s,9*s);
  fill(130);
  quad(4.7*s,9*s,5.3*s,9*s,5.5*s,9.4*s,4.5*s,9.4*s);
  fill(200);
  quad(4.5*s,9.4*s,5.5*s,9.4*s,5.55*s,9.8*s,4.45*s,9.8*s);
  fill(145);
  quad(4.45*s,9.8*s,5.55*s,9.8*s,5.4*s,10.4*s,4.6*s,10.4*s);
  fill(180);
  quad(3.75*s,10.4*s,6.25*s,10.4*s,5.75*s,10.75*s,4.25*s,10.75*s);
}
