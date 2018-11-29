//your variable declarations here
 Spaceship bob = new Spaceship();
 Star[] ben;
 Asteroid[] bleh;
public void setup() 
{
   background(0);
  size(500,500); 
  ben = new Star[100];
  
  for (int i = 0; i < ben.length; i ++)
  {
    ben[i] = new Star();
  }
  bleh = new Asteroid[50];
   for (int i = 0; i < bleh.length; i ++)
  {
    bleh[i] = new Asteroid();
  }

}
public void draw() 
{
  background(0);
  //star
  for (int i = 0; i < ben.length; i ++)
  {
    ben[i].show();
  }
  bob.show();
  bob.move();
  //asteroid
 for (int i = 0; i < bleh.length; i ++)
  {
    bleh[i].show();
  }
 
}
public void keyPressed()
{
  if(key =='h')
  bob.hyperspace();
  if(key == 'w')
   bob.accelerate(0.1); 
  if(key == 'a')
  bob.turn(-30);
  if(key == 'd')
  bob.turn(30);
  if(key == 's')
  bob.accelerate(-0.2);
}
