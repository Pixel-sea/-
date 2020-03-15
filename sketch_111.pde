float Spin;
Drop []drops=new Drop[100];
void setup(){
background(0);
 
size(400,600);  
for(int i=0;i<drops.length;i++){
drops[i]=new Drop();
}
}
void draw(){
 // background(0);
fill(255);
  line(0,300,400,300);
   fill(255,180);
  noStroke();
  Spin+=0.003;
  //background(100);
  ellipse(200, 300, 100, 100);
  fill(157,228,255,180);
  ellipse(200+sin(Spin)*100, 300+cos(Spin)*50, 60, 60);
  fill(255,50,100);
rect((200+sin(Spin*10)*100)+sin(Spin)*100, (300+cos(Spin)*100)+cos(Spin*2)*100, 20, 20);

for(int i=0;i<drops.length;i++){
drops[i].show();
drops[i].fall();
}
}
