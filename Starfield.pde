Particle[] normie = new Particle[2000];
void setup()
{
  //your code here
  size(400,400);
  for(int i = 0; i < normie.length; i++)
  {
    normie[i] = new NormalParticle();
  }  
  for(int i = 0; i < 50; i++)
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
    speed=((Math.random()*10)+1);
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
    //float angle = PI/3;
  public void move()
  {
    //x = x + Math.cos(180)*5;
    //y = y + Math.sin(180)*5;
    //angle =  + PI/3;
  }
  public void show()
  {
    /*for(int h = 0; h <100; h +=1)
    {
    for(int w = 0; w <100; w +=1)
    {
      ellipse((float)x,(float)y,w,h);
    }
    }*/
  }
}

class JumboParticle extends NormalParticle//uses inheritance
{
  //your code here
  public void show()
  {
    ellipse((float)x,(float)y,50,50);
  }
}
