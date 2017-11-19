void offSet() {
  if(enemyChance >= 1 && enemyChance <= 7) {
    enemyOneyPos = enemyOneyPos + 70;
  }
  if(enemyChance >= 10.1 && enemyChance <= 20) {
    enemyOneyPos = enemyOneyPos + 20;
  }
  if(enemyChance >= 20.1 && enemyChance <= 25) {
    enemyOneyPos = enemyOneyPos + 10;
  }
  if(enemyChance >= 35 && enemyChance <= 40) {
    enemyOneyPos = enemyOneyPos - 10;
  }
  if(enemyChance >= 40.1 && enemyChance <= 50) {
    enemyOneyPos = enemyOneyPos - 20;
  }
  if(enemyChance >= 55 && enemyChance <= 60) {
    enemyOneyPos = enemyOneyPos - 70;
  }
}