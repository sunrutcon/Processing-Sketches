

class Ball {
  float x = 0;
  float y = 0;
  float speedX = 1;
  float speedY = .5;
  float diametar = 20;

  float frictionConstant = 0.002;
  float gravitiConstant = 0.2;

  Ball(float _x, float _y) {
    x=_x;
    y=_y;
  }

  void run() {
    display();
    move();
    bounce();
    gravity();
    friction();
  }

  void display() {
    ellipse(x, y, diametar, diametar);
  }

  void move() {
    x+=speedX;
    y+=speedY;
  }

  void bounce() {
    if (x>width-diametar/2)
      speedX = -speedX;
    if (x<0+diametar/2)
      speedX = -speedX;
    if (y>height-diametar/2 && speedY>0)
      speedY = -speedY;
    if (y<0+diametar/2)
      speedY = -speedY;
  }

  void gravity() {
    if (abs(speedY) <= gravitiConstant && y >= height-diametar/2)
      speedY = 0;
    else
      speedY+=gravitiConstant;
  }

  void friction() {
    if (speedY == 0) {
      if (speedX > frictionConstant)
        speedX -= frictionConstant;
      else if (speedX < -frictionConstant)
        speedX += frictionConstant;
      else 
        speedX = 0;
    }
  }
}

