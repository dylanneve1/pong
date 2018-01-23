class Menus
{
  
  boolean playing = true;
  
  void caller()
  {
    play();
  }
  
  void play()
  {
    if(playing == true)
    {
      background(#263238);
      paddle.caller();
      enemy.caller();
    }
  }
}