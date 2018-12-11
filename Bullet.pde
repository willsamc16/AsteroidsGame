class Bullet extends Floater
{
   protected int myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection;
  public Bullet(Spaceship bob)
 {
  myCenterX= myCenterY = 250;
  myPointDirection = 1;
  double dRadians = myPointDirection*(Math.PI/180);
  myDirectionX = 5* Math.cos(dRadians) + 8;
 }
  public void setX(int x){myCenterX = x;}  
   public int getX(){return myCenterX;}
   public void setY(int y){myCenterY = y;}   
   public int getY(){return myCenterX;}   
   public void setDirectionX(double x){myDirectionX = x;}   
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY = y;}   
   public double getDirectionY(){return myDirectionY;}   
   public void setPointDirection(int degrees){myPointDirection = degrees;}   
   public double getPointDirection(){return myPointDirection;} 
 public show()
 {
   ellipse(200,200,30,30);
 }
}
