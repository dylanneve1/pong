class gameScreens
{
  int deathScreens = 1;
  int menu = 1;
  void deathScreen() 
  {
    if (deathScreens == 2) 
    {
      background(255, 0, 0);
      score = 0;
      textSize(60);
      text("Game Over", 80, 250);
      textSize(20);
      text("Press M to go to the main menu", 90, 300);
      if (keyPressed == true) 
      {
        if (key == 'm') {
          deathScreens = 1;
          menu = 1;
        }
      }
    }
  }

  void menu() 
  {
    if (menu == 1) 
    {
      ball.lifes = 5;
      background(0);
      textSize(40);
      text("Press R to begin", 90, 250);
    }
  }

  void gameMainSing() 
  {
    background(0);
    textSize(20);
    text("Score", 230, 20);
    text(score, 250, 45);
    text("High score", 300, 20);
    text(highScore, 344, 45);
    text("Lifes", 15, 20);
    text(ball.lifes, 30, 45);
    paddle.offSet();
    paddle.collision();
    paddle.randomness();
    ball.life();
    ball.move();
    ball.bounce();
    ball.gravity();
    ball.show();
    rect(paddle.playerOnexPos, paddle.playerOneyPos, 20, 60);
    rect(paddle.rectTwoxPos, paddle.enemyOneyPos, 20, 60);
    if (keyPressed == true) {
      if (key == 'w') 
      {
        paddle.playerOneyPos = paddle.playerOneyPos - 4;
      }
      if (key == 's') 
      {
        paddle.playerOneyPos = paddle.playerOneyPos + 4;
      }
    }
  }
  
  void gameMainMulti() 
  {
    background(0);
    textSize(20);
    paddle.offSet();
    paddle.collision();
    paddle.randomness();
    ball.life();
    ball.move();
    ball.bounce();
    ball.gravity();
    ball.show();
    rect(paddle.playerOnexPos, paddle.playerOneyPos, 20, 60);
    rect(paddle.playerTwoxPos, paddle.playerTwoyPos, 20, 60);
    if (keyPressed == true) {
      if (key == 'w') 
      {
        paddle.playerOneyPos = paddle.playerOneyPos - 4;
      }
      if (key == 's') 
      {
        paddle.playerOneyPos = paddle.playerOneyPos + 4;
      }
      if (key == 'i') 
      {
        paddle.playerTwoyPos = paddle.playerTwoyPos - 4;
      }
      if (key == 'k') 
      {
        paddle.playerTwoyPos = paddle.playerTwoyPos + 4;
      }
    }
  }
  
}