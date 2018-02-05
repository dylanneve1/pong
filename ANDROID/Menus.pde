// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

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
      text("Score", 50, 30);
      text(ball.playerScore, 50, 60);
      text("Score", 450, 30);
      text(ball.enemyScore, 450, 60);
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