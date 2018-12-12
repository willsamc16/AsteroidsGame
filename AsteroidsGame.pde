//your variable declarations here
 Spaceship bob = new Spaceship();
 Star[] ben;
 //Bullet shot = new Bullet(bob);
ArrayList<Bullet> shot = new ArrayList<Bullet>();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

public void setup() 
{
  background(0);
  size(500,500); 
  ben = new Star[100];

  for (int i = 0; i < ben.length; i ++)
  {
    ben[i] = new Star();
  }

   for(int i = 0; i < 30; i ++){
     asteroids.add(new Asteroid());
   asteroids.get(i).setDirectionX(Math.random() * 3 - 5);
    asteroids.get(i).setDirectionY(Math.random() * 5 - 2);
    asteroids.get(i).setPointDirection((int)(Math.random()*500));
    asteroids.get(i).myColor = 120;
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

 for(int i = asteroids.size() - 1; i >= 0; i--) {
    asteroids.get(i).show();
    asteroids.get(i).move();
    if(dist(bob.getX(), bob.getY(), asteroids.get(i).getX(),  asteroids.get(i).getY()) < 20) {
      asteroids.remove(i);
    }
 }
 

}
public void mousePressed(){
   shot.add(new Bullet(bob));
   shot.get(0).show();   
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
