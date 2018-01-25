// Copyright (C) 2017 Dylan Neve <dylanneve1@gmail.com>

class Paddle
{

  int x = 30;
  int y = 250;

  int leftEdge;
  int rightEdge;
  int topEdge;
  int bottomEdge;

  void caller()
  {
    show();
    move();
    edgeDetect();
    collision();
  }

  void show()
  {
    noStroke();
    rectMode(CENTER);

    fill(#CFD8DC);
    rect(x, y, 20, 60);
  }

  void move()
  {
    if (y < 0)
    {
      y = y + 6;
    }

    if ( y > 500)
    {
      y = y - 6;
    }

    if (keyPressed == true)
    {
      if (key == 'w')
      {
        y = y - 6;
      }
      if (key == 's')
      {
        y = y + 6;
      }
    }
  }
  
  void edgeDetect()
  {
    leftEdge = x - 10;
    rightEdge = x + 10;
    topEdge = y - 30;
    bottomEdge = y + 30;
  }
  
  void collision()
  {
    if(ball.leftEdge <= rightEdge && ball.y <= bottomEdge && ball.y >= topEdge)
    {
      ball.xSpeed *= -1;
    }
  }
}