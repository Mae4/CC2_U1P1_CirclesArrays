                class Circle
{
  float _x;
  float _y;
  float _Xvelocity;
  float _Yvelocity;
  int _dia;

  Circle()
  {
    _x = random(0+50, 800-50);
    _y = random(0+50, 800-50);
    _Xvelocity = random(-4, 4);
    _Yvelocity = random(-4, 4);
    _dia = (int)random(5,100);
  }

  void Draw()
  {
    stroke(255, 255, 255);
    ellipse(_x, _y, _dia, _dia);
    _x = _x + _Xvelocity;
    _y = _y + _Yvelocity;

    if (_x>800-50 || _x<0+50)
    {
      _Xvelocity = _Xvelocity * -1;
    }
    if (_y>800-50 || _y<0+50)
    {
      _Yvelocity = _Yvelocity * -1;
    }
  }
}
