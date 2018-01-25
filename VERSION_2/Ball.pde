// Copyright (C) 2017 Dylan Neve <dylanneve1@gmail.com>

class Ball
{
  
  int x = 250;
  int y = 250;
  
  int leftEdge;
  int rightEdge;
  int topEdge;
  int bottomEdge;
  
  int xSpeed = 3;
  int ySpeed = 1;
  
  void caller()
  {
    show();
    move();
    edgeDetect();
    sidesCollision();
    leftPaddleCollision();
    rightPaddleCollision();
  }
  
  void show()
  {
    fill(#ECEFF1);
    ellipse(x, y, 20, 20);
  }
  
  void move()
  {
    x = x + xSpeed;
    y = y + ySpeed;
  }
  
  void edgeDetect()
  {
    rightEdge = x + 10;
    leftEdge = x - 10;
    topEdge = y - 10;
    bottomEdge = y + 10;
  }
  
  void sidesCollision()
  {
    if(leftEdge <= 0)
    {
      xSpeed *= -1;
    }
    if(rightEdge >= 500)
    {
      xSpeed *= -1;
    }
    
    if(topEdge <= 0)
    {
      ySpeed *= -1;
    }
    if(bottomEdge >= 500)
    {
      ySpeed *= -1;
    }
  }
  
  void leftPaddleCollision()
  {
    if(leftEdge <= paddle.rightEdge && y <= paddle.bottomEdge && y >= paddle.topEdge)
    {
      xSpeed *= -1;
    }
  }
  
  void rightPaddleCollision()
  {
    if(rightEdge >= enemy.leftEdge && y <= enemy.bottomEdge && y >= enemy.topEdge)
    {
      xSpeed *= -1;
    }
  }
  
}