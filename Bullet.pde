class Bullet extends Floater
{
  protected int myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection;
  protected double dRadians;
  public Bullet(Spaceship bob2)
 {
  myCenterX= bob2.myCenterX;
  myCenterY= bob2.myCenterY;
  myPointDirection = bob2.getPointDirection();
  double dRadians = myPointDirection*(Math.PI/180);
  myDirectionX = 5* Math.cos(dRadians) + bob2.getDirectionX();
  myDirectionY = 5* Math.sin(dRadians) + bob2.getDirectionY();
 }
  public void setX(int x){myCenterX = x;}  
   public int getX(){return (int)myCenterX;}
   public void setY(int y){myCenterY = y;}   
   public int getY(){return (int)myCenterX;}   
   public void setDirectionX(double x){myDirectionX = x;}   
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY = y;}   
   public double getDirectionY(){return myDirectionY;}   
   public void setPointDirection(int degrees){myPointDirection = degrees;}   
   public double getPointDirection(){return myPointDirection;} 
 
 public void show()
 {
   fill(0,255,0);
   ellipse((float)myCenterX, (float)myCenterY,10,10);
 }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;    
  
   
  }   
}
