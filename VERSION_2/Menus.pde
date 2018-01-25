// Copyright (C) 2017 Dylan Neve <dylanneve1@gmail.com>

class Menus
{
  
  boolean playing = true;
  
  void caller()
  {
    menu();
    play();
  }
  
  void play()
  {
    if(playing == true)
    {
      background(#263238);
      paddle.caller();
      enemy.caller();
      ball.caller();
    }
  }
  
  void menu()
  {
    
    
  }
  
}