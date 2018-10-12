Particle[] normie = new Particle[100];
void setup()
{
  //your code here
  size(400,400);
  for(int i = 0; i < normie.length; i++)
  {
    normie[i] = new NormalParticle();
  }  
  normie[0]= new JumboParticle();
}
void draw()
{
  background(199);
  for(int i = 0; i < normie.length; i++)
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
    angle=(Math.random()*Math.PI*2);
    particolor= color(179, 237, 177);
  }
  public void move()
  {
    x= x + Math.cos(angle)*speed;
    y= y + Math.sin(angle)*speed;
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
class OddballParticle implements Particle//uses an interface
{
  //your code here
  
}
class JumboParticle extends NormalParticle//uses inheritance
{
  //your code here
  public void show()
  {
      ellipse((float)x,(float)y,50,50);
  }
}
