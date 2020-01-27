circles circle[] = new circles[10];

void setup()
{
  size(800, 800);
  for (int i=0; i < 10; i++)
  {
    circle[i] = new circles();
  }
}

void draw()
{
  background(0);
  for (int i=0; i < 10; i++)
  {
    circle[i].Draw();
  }
}
