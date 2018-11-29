class Asteroid extends Floater
{
  public Asteroid()
  {
   corners = 6;
   xCorners = new int [corners];
   yCorners = new int [corners];
   xCorners[0] =  0;
   yCorners[0] =  10;
   xCorners[1] =  8;
   yCorners[1] =  3;
   xCorners[2] =  8;
   yCorners[2] = -3;
   xCorners[3] =  0;
   yCorners[3] = -10;
   xCorners[4] = -8;
   yCorners[4] = -3;
   xCorners[5] = -8;
   yCorners[5] =  3;
   myCenterX = Math.random()*495;
   myCenterY = Math.random()*495;
  }
   public void setX(int x){myCenterX = x;}  
   public int getX(){return (int) myCenterX;}
   public void setY(int y){myCenterY = y;}   
   public int getY(){return (int)myCenterY;}   
   public void setDirectionX(double x){myDirectionX = x;}   
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY = y;}   
   public double getDirectionY(){return myDirectionY;}   
   public void setPointDirection(int degrees){myPointDirection = degrees;}   
   public double getPointDirection(){return myPointDirection;} 
  public void show()
{
  fill(0,255,0);   
    stroke(60);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
}

}
