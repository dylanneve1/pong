// Copyright (C) 2017 Dylan Neve <dylanneve1@gmail.com>

class Enemy
{
  
  int x = 470;
  int y;
  
  int leftEdge;
  int rightEdge;
  int topEdge;
  int bottomEdge;
  
  void caller()
  {
    show();
    edgeDetect();
    //collision();
  }
  
  void show()
  {
    y = ball.y;
    
    noStroke();
    rectMode(CENTER);

    fill(#CFD8DC);
    rect(x, y, 20, 60);
  }
  
  void edgeDetect()
  {
    leftEdge = x - 10;
    rightEdge = x + 10;
    topEdge = y - 30;
    bottomEdge = y + 30;
  }
}