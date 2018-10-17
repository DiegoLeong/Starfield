Particle[] normie = new Particle[2000];
Epicc ebic = new Epicc();
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
  ebic.show();
}

class Epicc 
{

  Epicc()
  {

  }
  void show()
  { 
    fill(0);
    rect(100,280,200,120);
    fill(206,180,133);
    rect(165,250,60,40);
    fill(219,194,149);
    rect(150,150,100,100);
    rect(180,250,70,25);
    //glasses
    fill(0);
    rect(175,180,40,15);
    rect(225,180,40,15);
    //tux
    fill(255);
    rect(165,280,60,120);
  }
}

class NormalParticle implements Particle
{
  //your code here
  double x, y, speed, angle;
  color particolor, jumbocolor;
  NormalParticle()
  {
    x=y=200;
    speed=((Math.random()*2)+1);
    angle=(Math.random()*Math.PI*2);
    particolor= color(239, 146, 40);
    jumbocolor= color(255, 214, 33);
  }
  public void move()
  {
    x= x + Math.cos(angle)*speed;
    y= y + Math.sin(angle)*speed;
  }
  public void show()
  {
    tint(255, 50);
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
    fill(226, 111, 49);
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
    fill(jumbocolor);
    ellipse((float)x,(float)y,50,50);
  }
}
