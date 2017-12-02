class Ball
{
  
  void main()
  {
    life();
  }
  
  void life() 
  {
    if (lifes == -1) 
    {
      if (score >= highScore) 
      {
        highScore = score;
      }
      deathScreen = 2;
      menu = 3;
    }
  }
}