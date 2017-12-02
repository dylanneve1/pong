class Paddle
{
  float y = displayHeight/2;
  float x = displayWidth/8;

  void show() 
  {
    rect(x, y, 10, 10);
  }

  void collision() 
  {
    if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos && ballyPos <= rectOneyPos + 60 && ballxPos >= rectOnexPos + 15) 
    {
      ballxSpeed = ballxSpeed * -1;
    }
    if (ballxPos >= rectTwoxPos && ballyPos >= enemyOneyPos && ballyPos <= enemyOneyPos + 60 && ballxPos <= rectTwoxPos + 5) 
    {
      ballxSpeed = ballxSpeed * -1;
    }
  }
}