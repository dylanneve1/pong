// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Enemy
{

  float x = 470;
  float y;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  float w = 20;
  float h = 60;

  void caller()
  {
    show();
    edgeDetect();
  }

  void show()
  {
    y = ball.y;

    noStroke();
    rectMode(CENTER);

    fill(#CFD8DC);
    rect(x, y, w, h);
  }

  void edgeDetect()
  {
    leftEdge = x - 10;
    rightEdge = x + 10;
    topEdge = y - 30;
    bottomEdge = y + 30;
  }
}