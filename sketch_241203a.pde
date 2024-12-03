// Declare Variables
float y = 0;
float speed = 0;
float gravity = 0.1;
void setup(){
  size(400,400);
}
void draw(){
  background(50,50,220);
  //Drawing the bird
    noStroke();
  fill(255,255,0);
  ellipseMode(CENTER);
  //body of the bird with y as the y value to make it so that it falls down
  ellipse(100,y,50,50);
fill(255,150,0);
rect(123,y,15,10);
  //Adding gravity to the character, but insuring that it doesn't go back up
  y = y + speed;
  speed = speed + gravity;
  if(y>height){
    y = height;
  }
}
