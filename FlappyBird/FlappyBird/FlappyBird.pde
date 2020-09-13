int pipegap= 100;
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
rect(pipex,uppipeheight+pipegap,150,500-(uppipeheight+ pipegap));
fill(255,0,0);
rect(0,475,500,25);
pipex--;
teleportPipes();
if(intersectsPipes()==true){
 exit();
}
if( birdy>=475){
  exit();
}
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
boolean intersectsPipes() {
     if (birdy < uppipeheight && birdx > pipex && birdx < (pipex+150)){
          return true; }
     else if (birdy>uppipeheight+pipegap && birdx > pipex && birdx < (pipex+150)) {
          return true; }
     else { return false; }
}
