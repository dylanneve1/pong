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