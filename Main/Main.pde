Ball[] balls =  { 
  new Ball(0, 180, 20, color(255,255,255)),
  new Ball(500, 100, 20, color(255,0,150)), 
  new Ball(500, 140, 20, color(0,20,100)),
  new Ball(500, 180, 20, color(255,50,50)),
  new Ball(500, 220, 20, color(50,100,0)),
  new Ball(500, 260, 20, color(0,100,255)),
  new Ball(465, 120, 20, color(200,0,255)),
  new Ball(465, 160, 20, color(0,200,150)),
  new Ball(465, 200, 20, color(150,0,200)),
  new Ball(465, 240, 20, color(255,255,0)),
  new Ball(430, 140, 20, color(255,0,255)),
  new Ball(430, 180, 20, color(0,255,255)),
  new Ball(430, 220, 20, color(0,0,0)),
  new Ball(395, 160, 20, color(255,0,0)),
  new Ball(395, 200, 20, color(0,255,0)),
  new Ball(360, 180, 20, color(0,0,255)),
};

void setup() {
  size(640, 360);
}

void draw() {
  background(51);

  for (Ball b : balls) {
    b.update();
    b.display();
    b.checkBoundaryCollision();
    for(Ball b_collide: balls){
      if(b != b_collide){
        b.checkCollision(b_collide);
      }
    }
  }
  
 // balls[0].checkCollision(balls[1]);
}
