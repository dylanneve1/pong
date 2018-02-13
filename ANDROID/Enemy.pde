// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Enemy
{

  float x = displayWidth * 0.94;
  float y;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  float w = displayWidth * 0.04;
  float h = displayWidth * 0.12;

  float chance = 50;

  void caller()
  {
    show();
    edgeDetect();
  }

  void show()
  {
    if (chance <= 20)
    {
      for (int i = 0; i < 5000; i++)
      {
        y = ball.y - (i/1000 * 50);
      }
    } else if (chance >= 21)
    {
      y = ball.y;
    }
    noStroke();
    rectMode(CENTER);

    fill(#CFD8DC);
    rect(x, y, w, h);
  }

  void edgeDetect()
  {
    leftEdge = x - w/2;
    rightEdge = x + w/2;
    topEdge = y - h/2;
    bottomEdge = y + h/2;
  }
}