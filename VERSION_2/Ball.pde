class Ball
{
  
  int x = 250;
  int y = 250;
  
  void caller()
  {
    show();
  }
  
  void show()
  {
    fill(#ECEFF1);
    ellipse(x, y, 20, 20);
  }
}