class Ball
{
  
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
  
  void move() 
  {
  ballxPos = ballxPos + ballxSpeed;
  ballyPos = ballyPos + randomness;
  }

  void bounce() 
  {
    if (ballxPos >= 500) 
    {
      score = score + 1;
      ballxPos = 70;
      ballyPos = 250;
      delay(3000);
      enemyChance = 0;
    }
    if (ballxPos <= 0) 
    {
      ballxPos = 430;
      ballyPos = 250;
      delay(3000);
      lifes = lifes - 1;
    }
  }

  void gravity() 
  {
    if (ballyPos >= 500) 
    {
      randomness = randomness*-1;
    }
    if (ballyPos <= 1) 
    {
      randomness = randomness*-1;
    }
  }  
}