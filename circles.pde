class circles
{
  float _x;
  float _y;
  float _ray;
  float _Xvelocity;
  float _Yvelocity;

  circles()
  {
    _x = random(0+50, 800-50);
    _y = random(0+50, 800-50);
    _ray = 100;
    _Xvelocity = random(-4, 4);
    _Yvelocity = random(-4, 4);
  }

  void Draw()
  {
    float _collision = dist(_x, _y, _x, _y); // CHECK THIS?
    stroke(255, 255, 255);
    ellipse(_x, _y, _ray, _ray);
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

    if (_collision<50)
    {
      _Xvelocity = _Xvelocity * -1;
      _Yvelocity = _Yvelocity * -1;
    }
  }
}
