float ballxPos = 225;
float ballyPos = 225;
float ballxSpeed = 4;
float ballySpeed = 1.5;
float randomness = 0;

int menu = 1;
int deathScreen = 1;
float enemyChance;

int lifes;

int rectOnexPos = 30;
int rectOneyPos = 250;
int rectTwoxPos = 450;
int rectTwoyPos = 250;
float enemyOneyPos;

int score = 0;
int highScore = 0;

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
    background(0);
    textSize(20);
    text("Score", 230, 20);
    text(score, 250, 45);
    text("High score", 300, 20);
    text(highScore, 344, 45);
    text("Lifes", 15, 20);
    text(lifes, 30, 45);
    collision();
    gravity();
    randomness();
    move();
    life();
    bounce();
    display();
    rect(rectOnexPos, rectOneyPos, 20, 60);
    rect(rectTwoxPos, enemyOneyPos, 20, 60);
    if (keyPressed == true) {
      if (key == 'w') {
        rectOneyPos = rectOneyPos - 4;
      }
      if (key == 's') {
        rectOneyPos = rectOneyPos + 4;
      }
      if (key == 'i') {
        enemyOneyPos = enemyOneyPos - 4;
      }
      if (key == 'k') {
        enemyOneyPos = enemyOneyPos + 4;
      }
    }
  }
}

void deathScreen() {
  if (deathScreen == 2) {
    background(255, 0, 0);
    textSize(60);
    text("Game Over", 80, 250);
    textSize(20);
    text("Press M to go to the main menu", 90, 300);
    if (keyPressed == true) {
      if (key == 'm') {
        deathScreen = 1;
        menu = 1;
      }
    }
  }
}

void life() {
  if (lifes == -1) {
    deathScreen = 2;
    menu = 3;
  }
}

void menu() {
  if (menu == 1) {
    lifes = 5;
    background(0);
    textSize(40);
    text("Press R to begin", 90, 250);
  }
}

void display() {
  ellipse(ballxPos, ballyPos, 20, 20);
}

void move() {
  ballxPos = ballxPos + ballxSpeed;
  ballyPos = ballyPos + randomness;
}

void bounce() {
  if (ballxPos >= 500) {
    score = score + 1;
    ballxPos = 70;
    ballyPos = 250;
    delay(3000);
  }
  if (ballxPos <= 0) {
    if (score >= highScore) {
      highScore = score;
    }
    ballxPos = 430;
    ballyPos = 250;
    delay(3000);
    lifes = lifes - 1;
  }
}

void gravity() {
  if (ballyPos >= 500) {
    randomness = randomness*-1;
  }
  if (ballyPos <= 1) {
    randomness = randomness*-1;
  }
}

void collision() {
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos && ballyPos <= rectOneyPos + 60 && ballxPos >= rectOnexPos + 15) {
    ballxSpeed = ballxSpeed * -1;
  }
  if (ballxPos >= rectTwoxPos && ballyPos >= enemyOneyPos && ballyPos <= enemyOneyPos + 60 && ballxPos <= rectTwoxPos + 5) {
    ballxSpeed = ballxSpeed * -1;
  }
}

void randomness() {
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 50 && ballyPos <= rectOneyPos + 60 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 30);
    randomness = 3;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 40 && ballyPos <= rectOneyPos + 50 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 30);
    randomness = 2;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 30 && ballyPos <= rectOneyPos + 40 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 30);
    randomness = 1;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 25 && ballyPos <= rectOneyPos + 30 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 30);
    randomness = 0;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 20 && ballyPos <= rectOneyPos + 30 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 30);
    randomness = -1;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 10 && ballyPos <= rectOneyPos + 20 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 30);
    randomness = -2;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 0 && ballyPos <= rectOneyPos + 10 && ballxPos >= rectOnexPos) {
    randomness = -3;
    enemyChance = random(0, 30);
  }
  if (ballxPos >= rectTwoxPos - 20 && ballyPos >= rectTwoyPos + 50 && ballyPos <= rectTwoyPos + 60 && ballxPos <= rectTwoxPos) {
    randomness = 3;
  }
  if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 40 && ballyPos <= rectTwoyPos + 50 && ballxPos <= rectTwoxPos) {
    randomness = 2;
  }
  if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 30 && ballyPos <= rectTwoyPos + 40 && ballxPos <= rectTwoxPos) {
    randomness = 1;
  }
  if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 25 && ballyPos <= rectTwoyPos + 30 && ballxPos <= rectTwoxPos) {
    randomness = 0;
  }
  if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 20 && ballyPos <= rectTwoyPos + 30 && ballxPos <= rectTwoxPos) {
    randomness = -1;
  }
  if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 10 && ballyPos <= rectTwoyPos + 20 && ballxPos <= rectTwoxPos) {
    randomness = -2;
  }
  if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 0 && ballyPos <= rectTwoyPos + 10 && ballxPos <= rectTwoxPos) {
    randomness = -3;
  }
}