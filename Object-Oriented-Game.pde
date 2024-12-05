// Declare Objects
Rocks rocks;
Fire[] fireobject = new Fire[20];
//Declare Variables
float y = 45;
float speed = 0;
float gravity = 0.1;
boolean start = false;
void setup(){
  size(800,400);
  for(int i=0; i < fireobject.length; i++){
    fireobject[i] = new Fire(300, 300);
  }
  rocks = new Rocks();
}
void draw(){
  if(keyCode==SHIFT){
    start=true;
  }
  if (start==true){
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
  if(y<40 || y>-frameCount/23+300){}
  else {  
    fill(255);
  textSize(60);
   text("Distance:"+frameCount, 400, 50);
  }
  
if(y<40 || (y>-frameCount/23+300 || (frameCount==2500))){
  start=false;
}
}
else{
  background(10,10,10);
  frameCount=0;
  textSize(25);
  text("Press enter to change direciton, Press shift to start, Fly 2500 to win", 50, 200);
}
}
// Use the enter button to reverse the direction of the bird character in order to dodge obstacles
 void keyPressed(){
   if (keyCode==ENTER) {
    speed = speed*-1;
   }
 }
