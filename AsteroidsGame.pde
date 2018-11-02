//your variable declarations here
 Spaceship bob = new Spaceship();
 Star[] ben;
public void setup() 
{
   background(0);
  size(500,500); 
  ben = new Star[100];
  
  for (int i = 0; i < ben.length; i ++)
  {
    ben[i] = new Star();
  }

}
public void draw() 
{
  background(0);
  for (int i = 0; i < ben.length; i ++)
  {
    ben[i].show();
  }
  bob.show();
  bob.move();
 
}
public void keyPressed()
{
  if(key =='h')
  bob.hyperspace();
  if(key == 'w')
   bob.accelerate(0.3); 
}
