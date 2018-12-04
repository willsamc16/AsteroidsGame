class Star //note that this class does NOT extend Floater
{
  private double myX, myY; 
  private int myColor;
  public Star()
  {
    myX =(Math.random()*505);
    myY = (Math.random()*505) ;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  public void show()
  {
  fill(myColor);
  noStroke();
  ellipse((float)myX, (float)myY, 3, 3);
   
  }
}
