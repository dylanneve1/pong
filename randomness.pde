void randomness() {
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 50 && ballyPos <= rectOneyPos + 60 && ballxPos >= rectOnexPos) {
    enemyChance = random(-15, 15);
    randomness = 3;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 40 && ballyPos <= rectOneyPos + 50 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 60);
    randomness = 2;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 30 && ballyPos <= rectOneyPos + 40 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 60);
    randomness = 1;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 25 && ballyPos <= rectOneyPos + 30 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 60);
    randomness = 0;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 20 && ballyPos <= rectOneyPos + 30 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 60);
    randomness = -1;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 10 && ballyPos <= rectOneyPos + 20 && ballxPos >= rectOnexPos) {
    enemyChance = random(0, 60);
    randomness = -2;
  }
  if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 0 && ballyPos <= rectOneyPos + 10 && ballxPos >= rectOnexPos) {
    randomness = -3;
    enemyChance = random(0, 60);
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