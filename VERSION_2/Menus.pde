// Copyright (C) 2017 Dylan Neve <dylanneve1@gmail.com>

class Menus
{

  boolean playing = false;
  boolean menu = true;
  boolean dead = false;
  boolean won = false;

  void caller()
  {
    menu();
    play();
    dead();
    won();
  }

  void play()
  {
    if (playing == true)
    {
      background(#263238);
      paddle.caller();
      enemy.caller();
      ball.caller();
      fill(255);
      textSize(20);
      text("Lives", 30, 20);
      text(ball.playerLives, 30, 50);
      text("Score", 100, 20);
      text(ball.playerScore, 100, 50);
      text("Lives", 470, 20);
      text(ball.enemyLives, 470, 50);
      text("Score", 400, 20);
      text(ball.enemyScore, 400, 50);
    }
  }

  void dead()
  {
    if (dead == true)
    {
      background(#BF360C);
    }
  }

  void won()
  {
    if (won == true)
    {
      background(#01579B);
    }
  }

  void menu()
  {
    if (menu == true)
    {

      background(#263238);
      fill(255);
      textSize(40);
      textAlign(CENTER);
      text("Press r to begin", 250, 250);

      if (keyPressed == true)
      {
        if (key == 'r')
        {
          playing = true;
          menu = false;
        }
      }
    }
  }
}