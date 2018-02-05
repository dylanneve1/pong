// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Paddle
{

  float x = 30;
  float y = 250;

  float w = 20;
  float h = 60;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  void caller()
  {
    show();
    move();
    edgeDetect();
  }

  void show()
  {
    noStroke();
    rectMode(CENTER);

    fill(#CFD8DC);
    rect(x, y, w, h);
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
}