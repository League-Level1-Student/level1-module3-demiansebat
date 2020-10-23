void setup(){
  size(800,600);
}
void draw(){
  background(0,0,254);
  fill(0, 254, 0);
ellipse(300, 550, 40, 40);
}
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            //Frog Y position goes up
        }
        else if(keyCode == DOWN)
        {
            //Frog Y position goes down 
        }
        else if(keyCode == RIGHT)
        {
            //Frog X position goes right
        }
        else if(keyCode == LEFT)
        {
            //Frog X position goes left
        }
    }
}
