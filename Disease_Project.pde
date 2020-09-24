

int IMMUNE = 0;
int NONIMMUNE = 1;
int SICK = 2;
Population pop = null;
void setup()
{
  size(600, 600);
  int numRows = 50;
  int numCols = 50;
  int cellSize = 10;
  int border = 20;
  int pctImmune = 56;
  pop = new Population(numRows, numCols, pctImmune, cellSize, border);
  pop.initialize();
}

void draw()
 {
 delay(500);
 pop.draw();
 pop.step();
 pop.printStatistics();
 }
