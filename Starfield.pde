Particle[] normie = new Particle[3000];
void setup()
{
  //your code here
  size(400,400);
  for(int i = 0; i < normie.length; i++)
  {
    normie[i] = new NormalParticle();
  }  
  for(int i = 0; i < 100; i++)
  {
    normie[i] = new JumboParticle();
  }
  normie[1]= new OddballParticle();
}
void draw()
{
  background(255);
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
    speed=((Math.random()*2)+1);
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
    fill(particolor);
    noStroke();
    ellipse((float)x,(float)y,10,10);
  }
}
interface Particle
{
  //your code here
  public void move();
  public void show();
  
}
class OddballParticle implements Particle//uses an interface
{
  //your code here
  double x =200;
  double y =200;
  float s = 0;
  //float angle = PI/3;
  public void show()
  {
    fill(240,30,30);
    ellipse((float)x,(float)y,s,s);
  }  
  public void move()
  {
    s = s + 5;
  }
  
}

class JumboParticle extends NormalParticle//uses inheritance
{
  //your code here
  public void show()
  {
    fill(particolor);
    ellipse((float)x,(float)y,50,50);
  }
}
