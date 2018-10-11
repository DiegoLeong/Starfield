Particle[] normie = new Particle[10];
void setup()
{
  //your code here
  size(400,400);
  for(int i = 0; i<normie.length; i++)
  {
    normie[i] = new NormalParticle();
  }  
}
void draw()
{
  //your code here
  for(int i = 0; i<normie.length; i++)
  {
    normie[i].show();
    normie[i].move();
  }  
}
class NormalParticle implements Particle
{
  //your code here
  double x, y, speed, angle;
  color particolor;
  
  NormalParticle()
  {
    x=y=200;
    speed=(Math.random()*10)+1;
    angle=Math.random()*Math.PI*2;
    particolor= color(179, 237, 177);
  }
  public void move()
  {
    x= x + cos((float)angle)*speed;
    y= y + cos((float)angle)*speed;

  }
  public void show()
  {
      ellipse((float)x,(float)y,10,10);
  }
}
interface Particle
{
  //your code here
  public void show();
  public void move();
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
