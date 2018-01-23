class Paddle
{

  int x = 30;
  int y = 250;

  void caller()
  {
    show();
    move();
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
}