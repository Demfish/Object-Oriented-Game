// Declare Objects
Rocks rocks;
Fire[] fireobject = new Fire[20];
//Declare Variables
float y = 45;
float speed = 0;
float gravity = 0.1;
void setup(){
  size(800,400);
  for(int i=0; i < fireobject.length; i++){
    fireobject[i] = new Fire(300, 300);
  }
  rocks = new Rocks();
}
void draw(){
  background(41,41,41);
  
  rocks.display2();
  rocks.move2();
  
 for (int i = 0; i < fireobject.length; i++){
  fireobject[i].display();
  fireobject[i].move();
 }
  //Drawing the bird
    noStroke();
  fill(255,255,0);
  ellipseMode(CENTER);
  //body of the bird with y as the y value to make it so that it falls down
  ellipse(100,y,50,50);
fill(255,150,0);
//adding the beak
rect(123,y,15,10);
//adding an eyeball
fill(255);
ellipse(100,y,20,20);
fill(0);
ellipse(100,y,10,10);
  //Adding gravity to the character, but insuring that it doesn't go back up
  y = y + speed;
  speed = speed + gravity;
  println(y);
  if(y<40 || y>-frameCount/15+300){}
  else {  
    fill(255);
  textSize(60);
   text("Distance:"+frameCount, 400, 50);
  }

  if(y<40){
    fill(255);
    textSize(60);
    text("Game Over", 250, 200);
speed=0;
gravity=0;
fill(0);
ellipse(100,y,50,50);
rect(123,y,15,10);
fill(255);
ellipse(100,y,20,20);
fill(0);
ellipse(100,y,10,10);

  }
if(y>-frameCount/15+300){
      fill(255);
    textSize(60);
    text("Game Over", 250, 200);
   
speed=0;
gravity=0;
fill(0);
ellipse(100,y,50,50);
rect(123,y,15,10);
fill(255);
ellipse(100,y,20,20);
fill(0);
ellipse(100,y,10,10);
}
}
// Use the enter button to reverse the direction of the bird character in order to doge obstacles
 void keyPressed(){
   if (keyCode==ENTER) {
    speed = speed*-1;
   }
 }
