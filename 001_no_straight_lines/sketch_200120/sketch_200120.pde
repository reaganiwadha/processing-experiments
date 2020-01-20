int x = 0;
int y = 0;

float xAlter = 0;
float yAlter = 0;

boolean resetIfOverlapped = true;
boolean disableX = false;
boolean disableY = false;

float mod = 0;
float modFreq = 0.001;
float modFreq2 = 0;

float wavy =25;

int clockSpeed = 25;

int dist = 55;

void setup(){
  size(800,800);
  background(0);
  stroke(255);
  strokeWeight(3);
}

void draw(){
  for(int i=0; i<clockSpeed; i++){
    y++;
    mod+=modFreq;
    modFreq+=modFreq2;
  if(y>height && x>width && resetIfOverlapped){
    x=0; y=0; background(0);
  }
    if(y>height){
      y=0;
      x+=dist;
    }
    xAlter = x + sin(mod) * wavy;
    yAlter = y + sin(mod) * wavy;
    if(!disableY){
      point(xAlter,yAlter);
    }
    if (!disableX){
      point(yAlter,xAlter);
    }
  }
}
