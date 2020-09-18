int pipegap= 100;
int downpipeheight=450;
int birdx= 5;
int birdy= 0;
int birdYVelocity = 50;
int gravity=2;
int pipex=500;
int uppipeheight= 150;
int score=0;
PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
void setup(){
size(500, 500);
            back = loadImage("flappyBackground.jpg");
            pipeBottom = loadImage("bottomPipe.png");
            pipeTop = loadImage("topPipe.png");
            bird = loadImage("bird.png");
            bird.resize(50,50);
            back.resize(500,500);
            
}

void draw() {
   background(back);
   image(bird, birdx, birdy);
birdy+=gravity;
pipeTop.resize(150,uppipeheight);
image(pipeTop, pipex,0);
//rect(pipex,0,150,uppipeheight
pipeBottom.resize(150,500-(uppipeheight+ pipegap));
image(pipeBottom, pipex,(uppipeheight+ pipegap));
//rect(pipex,uppipeheight+pipegap,150,500-(uppipeheight+ pipegap));
pipex-=2;
teleportPipes();
if(intersectsPipes()==true){
 exit();
}
if( birdy>=400){
  exit();
}
text(score, 50, 50);
if( birdx>=pipex +140 && birdx<pipex+150){
  score++;
}
}
void mousePressed(){
birdy-= birdYVelocity;
}
void teleportPipes(){
  if( pipex==-200){
    pipex=500;
    uppipeheight = (int) random(100, 300);
    downpipeheight=(int) random(400,500);
  }
}
boolean intersectsPipes() {
     if (birdy < uppipeheight && birdx > pipex && birdx < (pipex+150)){
          return true; }
     else if (birdy>uppipeheight+pipegap && birdx > pipex && birdx < (pipex+150)) {
          return true; }
     else { return false; }
     
}
