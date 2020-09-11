int birdx= 5;
int birdy= 0;
int birdYVelocity = 30;
int gravity=1;
int pipex=500;
int uppipeheight= 150;
void setup(){
size(500, 500);
}

void draw() {
  background(47, 203, 85);
fill(255, 75, 75);
stroke(77, 84, 255);
ellipse(birdx,birdy,10, 10);
birdy+=gravity;
fill(121,127,134);
rect(pipex,0,150,uppipeheight);
fill(121,127,134);
rect(pipex,300,150,200);
pipex--;
teleportPipes();
}
void mousePressed(){
birdy-= birdYVelocity;
}
void teleportPipes(){
  if( pipex==-200){
    pipex=500;
    uppipeheight = (int) random(100, 300);
  }
}
