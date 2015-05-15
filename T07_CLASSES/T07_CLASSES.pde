
Ball myBall;
Ball myBall2;
Ball myBall3;


void setup(){
  //frameRate(60);
  size(600,600);
  smooth();
  
  myBall = new Ball(500,400);
  myBall2 = new Ball(550,450);
  myBall3 = new Ball(400,550);
}

void draw(){
  background(200);
  myBall.run();
  myBall2.run();
  myBall3.run();
  
}
