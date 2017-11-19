void setup() {
  size(500, 500);
  frameRate(60);
}

void draw() {
  enemyOneyPos = ballyPos - 30;
  menu();
  deathScreen();
  if (keyPressed == true) { 
    if (key == 'r') {
      menu = 2;
    }
  }
  if (menu == 2) {
    mainGame();
  }
}