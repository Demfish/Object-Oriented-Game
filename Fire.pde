//Small bits of this code were used from the Train_part_3_complete
class Fire {
  PVector position;
  PVector velocity;
  
  // This constructor takes an x position and the speed of the firethat will harm the bird character
  Fire(float x, float s) {
    position = new PVector(x, 0);
    velocity = new PVector (s, 0);
  }
  
   void display() {
     //draw fire
     fill(255,100,0);
triangle(random(5,1500), 50, 0, -100, 0, 25);
rect(0,-frameCount/15+300,1000,1000);
   }
  
  void move() {
    //have the fire travel across the screen
    position.add(velocity);
  }
}
    
    
