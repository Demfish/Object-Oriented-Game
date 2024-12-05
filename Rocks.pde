class Rocks {
  // Declare variables
float rocksX;
float rocksY;  
//Constructor
Rocks() {
rocksX = frameCount;
rocksY = random(5,150);
}
// Display background rocks
void display2() {
stroke(255,100,100);
// rock positions
fill(30,30,30);
ellipse(-rocksX+850, rocksY+10, 80, 80);
ellipse(-rocksX+950, rocksY+100, 80, 80);
ellipse(-rocksX+1100, rocksY, 80, 80);
fill(255,100,0);
rect(-rocksX+1100, rocksY, 10, 600);
rect(-rocksX+950, rocksY+100, 10, 600);
rect(-rocksX+850, rocksY+10, 10, 600);
}
// Allows the rocks to move in the backdrop until the frameCount exceed 1700, which then it is offscreen
void move2() {
  rocksX = rocksX + frameCount/300;
  if (rocksX > width+300) {
    rocksX = 0;
    rocksY = random(5,150);
    if (frameCount>2500){
      rocksX = 0;
      rocksY=-1000;
  }
}
}
}
