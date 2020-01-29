/*

This is a project that uses a class to collide circles with one another.

*/

Circle circle[] = new Circle[10];

void setup()
{
  size(800, 800);
  for (int i=0; i < 10; i++)
  {
    circle[i] = new Circle();
  }
}

void draw()
{
  background(0);
  for (int i=0; i < 10; i++)
  {
    circle[i].Draw();
  }
  
  
  
  for (int i=0; i < circle.length; i++)
  {
    for (int j=0; j < circle.length; j++)
    {
      if (i!=j)
      {
        float d=dist(circle[i]._x, circle[i]._y, circle[j]._x, circle[j]._y);
        if (d<circle[i]._dia/2+circle[j]._dia/2)
        {
          circle[i]._Yvelocity =  circle[i]._Yvelocity * -1;
          circle[i]._Xvelocity =  circle[i]._Xvelocity * -1;
        }
      }
    }
  }
}
