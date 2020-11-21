Car car=new Car(100, 100, 50, 5);
Car truck=new Car(450, 450, 50, 5);
Car lambo=new Car(500, 100, 50, 5);
int hopdistance= 90;
int x= 300;
int y= 550;
class Car{
  int carx;
  int cary;
  int carsize;
  int carspeed;
  void display()
{
      fill(0,255,0);
      rect(carx , cary, carsize, 50);
}
  Car(int x, int y, int size, int speed){
    carx=x;
    cary=y;
    carsize=size;
    carspeed=speed;
  }
}
void setup(){
  size(800,600);
}
void draw(){
  background(0,0,254);
  fill(0, 254, 0);
ellipse(x,y, 40, 40);
car.display();
truck.display();
lambo.display();
}
void keyPressed(){
    if(key == CODED){
        if(keyCode == UP)
        {
            //Frog Y position goes up
            if (checkbounds(x, y-hopdistance)){
              y-=hopdistance;
            }
        
        }
        else if(keyCode == DOWN)
        {
            //Frog Y position goes down 
            if (checkbounds(x, y+hopdistance)){
            y+=hopdistance;
            }
        }
        else if(keyCode == RIGHT)
        {
            //Frog X position goes right
            if (checkbounds( x+hopdistance,y)){
            x+=hopdistance;
            }
        }
        else if(keyCode == LEFT)
        {
            //Frog X position goes left
            if (checkbounds(x-hopdistance, y)){
            x-=hopdistance;
            }
        }
    }
   
}
 boolean checkbounds(int cx, int cy){
   if( cx<0 || cx>width){
     return false;
   }
   if( cy<0 || cy>height){
     return false;
   }
   return true;
 }
