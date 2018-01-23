class Paddle
{

  int x = 30;
  int y = 250;

  void caller()
  {
    show();
    move();
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
  
  void collision()
  {
    if(ball.leftEdge <= x + 10)
    {
      ball.xSpeed *= -1;
    }
    
    
    
    
  }
}