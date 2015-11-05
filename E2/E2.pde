PImage sun ;
PImage earth ;
PImage moon ;

float angle=0;
float phi=0;
float spacing = 70;


void setup (){
  
  size(600,600);
  sun = loadImage("sun.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");

}
void draw(){
  background(0);
  imageMode(CENTER);
  image(sun,width/2,height/2);
  
  translate(width/2,height/2);
  float a = map(mouseX-width/2,-width/2,width/2,PI,-PI);
  float earthX = 200;
  float earthY = 0;
  rotate(a);
  image(earth,earthX,earthY);
  

  // moon
  float mx = earthX+cos(angle+phi)*spacing;
  float my = earthY+sin(angle+phi)*spacing;
  image(moon,mx,my);

  angle = 0;
  phi += 0.06;

  
}
