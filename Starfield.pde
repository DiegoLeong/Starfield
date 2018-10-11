NormalParticle[] normie;
void setup()
{
  //your code here
  size(400,400);
  normie = new NormalParticle[2];
}
void draw()
{
  //your code here
  for(int i = 0; i<normie.length; i++)
  {
    normie[i].move();
    normie[i].show();
  }  
}
class NormalParticle
{
  //your code here
  double x, y, speed, angle;
  color particolor;
  
  NormalParticle()
  {
    x=y=200;
    speed=10;
    angle=Math.random()*Math.PI;
    particolor= color(179, 237, 177);
  }
  void move()
  {
    x+= cos((float)angle);
    y+= cos((float)angle);

  }
  void show()
  {
     
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
