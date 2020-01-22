int x = 0;
int y = 0;

float xAlter = 0;
float yAlter = 0;

boolean resetIfOverlapped = true;
boolean disableX = false;
boolean disableY = true;
boolean isSin = false;

float mod = 0;
float modFreq = 0.05;
float modFreq2 = 0;

float wavy = 10;

int clockSpeed = 25;

int dist = 35;

void setup(){
  size(500,500);
  background(0);
  stroke(255);
  strokeWeight(3);
}

void draw(){
  //handwriting
  
  modFreq = random(0,0.6);
  //isSin = int(random(0,4))%2==0;
  
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
    float sm = isSin ? sin(mod) : cos(mod);
    xAlter = x + sm * wavy;
    yAlter = y + sm * wavy;
    if(!disableY){
      ellipse(xAlter,yAlter,3,3);
    }
    if (!disableX){
      ellipse(yAlter,xAlter,3,3);
    }
  }
}
