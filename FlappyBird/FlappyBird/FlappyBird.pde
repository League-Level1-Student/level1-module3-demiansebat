int birdx= 5;
int birdy= 250;
int birdYVelocity = 10;
int gravity=1;
void setup(){
size(500, 500);
}

void draw() {
  background(47, 203, 85);
fill(255, 75, 75);
stroke(77, 84, 255);
ellipse(birdx,birdy,10, 10);
birdy-= birdYVelocity;
}
