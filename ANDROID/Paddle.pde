// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Paddle
{

  float x = displayWidth * 0.06;
  float y = displayHeight/2;

  float w = displayWidth * 0.04;
  float h = displayWidth * 0.12;

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
    if(mousePressed)
    {
      if(mouseY > displayHeight/2)
      {
        y = y + (displayHeight * 6/1080);
      }
      else if(mouseY < displayHeight/2)
      {
        y = y - (displayHeight * 6/1080);
      }
    }
  }

  void edgeDetect()
  {
    leftEdge = x - w/2;
    rightEdge = x + w/2;
    topEdge = y - h/2;
    bottomEdge = y + h/2;
  }
}