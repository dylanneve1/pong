class Ball
{
  
  int x = 250;
  int y = 250;
  
  int leftEdge;
  int rightEdge;
  
  int xSpeed = 3;
  
  void caller()
  {
    show();
    move();
    edgeDetect();
    collision();
  }
  
  void show()
  {
    fill(#ECEFF1);
    ellipse(x, y, 20, 20);
  }
  
  void move()
  {
    x = x + xSpeed;
  }
  
  void edgeDetect()
  {
    rightEdge = x + 10;
    leftEdge = x - 10;
  }
  
  void collision()
  {
    if(leftEdge <= 0)
    {
      xSpeed *= -1;
    }
    if(rightEdge >= 500)
    {
      xSpeed *= -1;
    }
  }
  
  
  
}