//var                          ort

float Spin;
Drop []drops=new Drop[100];
void setup() {
  background(0);

  size(400, 600);
  for (int i=0; i<drops.length; i++) {
    drops[i]=new Drop();
  }
}
void draw() {
  noStroke();
  fill(0, 10);     
  rect(0, 0, width, height);
  fill(255);
  line(0, 300, 400, 300);
  fill(11);
  noStroke();
  Spin+=0.003;
  //background(100);
 // Gravitational sphere                    ort
  ellipse(200, 300, 100, 100);
  fill(222, 228, 255, 180);
  ellipse(200+sin(Spin)*100, 300+cos(Spin)*50, 60, 60);
  fill(222, 228, 255, 180);
  rect((200+sin(Spin*10)*100)+sin(Spin)*100, (300+cos(Spin)*100)+cos(Spin*2)*100, 25, 25);

  drawCircles();

  for (int i=0; i<drops.length; i++) {
    drops[i].show();
    drops[i].fall();
  }
}

float angle = 0;   
float a = 0;       
void drawCircles() {
  pushMatrix(); 
  translate(width *0.5, height *0.5); 

 strokeWeight(5);
  noFill();
  stroke(1);
  float a = 110;              
  float len = a*pow(3, 0.5);  
  triangle(-len, a, 0, a-pow(3, 0.5)*len, len, a);

//    Click mouse                   ort
 fill(1);             
 // stroke(150);             
  //strokeWeight(2);
  rotate(angle);              
  for (int i=0; i<12; i++) { 
    pushMatrix();
    rotate(i*TWO_PI/12);
    translate(150, 0);       
    ellipse(0, 0, 20, 20);   
    popMatrix();
  }
  if (mousePressed) {
    a += 0.01;
    angle += a;             
  }
  popMatrix();
}
