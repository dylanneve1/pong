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
      //background(0);
      paddle.caller();
      enemy.caller();
      ball.caller();
      fill(255);
      textSize(20);
      //text("Lives", 50, 20);
      //text(ball.playerLives, 50, 50);
      text("Score", 50, 30);
      text(ball.playerScore, 50, 60);
      //text("Lives", 450, 20);
      //text(ball.enemyLives, 450, 50);
      text("Score", 450, 30);
      text(ball.enemyScore, 450, 60);
      //fill(255);
      //dash.line(10, 500, 90, 90);
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