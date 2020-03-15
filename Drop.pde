class Drop {
  float x=random(width);
  float y=random(-200, -100);
  float yspeed=random(5, 10);

  void fall() {
    y=y+yspeed;
    if (y>height) {
      y=random(-200, -100);
    }
  }

  void show() {
    strokeWeight(1);
    stroke(20);    
    line(x, y, x, y+200);       
  }
}
 
