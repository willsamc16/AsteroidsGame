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
  //your code here
 for (int i = 0; i < ben.length; i ++)
  {
    ben[i].show();
  }
  bob.show();
 
}
public void keyPressed()
{
  if(key =='h')
  bob.hyperspace();
}
