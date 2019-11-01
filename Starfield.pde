Particle[] meow =  new Particle[500];

void setup()
{
	background(0);
	size(500,500);
	frameRate(50);
  for (int i =0; i<meow.length; i++)
  {
    meow[i] = new Particle();
       meow[90] = new OddballParticle();

  }

}
void draw()
{
	background(0);
	 for (int i = 0; i <meow.length; i++)
  {
    meow[i].show();
    meow[i].move();
    
  }
}  


class Particle
{
	double myX,myY,myAngle,mySpeed;
	int myColor;
	Particle()
	{
myX = 225;
myY = 225;
myAngle = Math.random()*2*Math.PI;
mySpeed = Math.random()*4;
 myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
	}
void move(){
 
    myY += Math.sin(myAngle)*mySpeed;
    myX += Math.cos(myAngle)*mySpeed;
}
void show()
{

ellipse((float)myX, (float)myY, 5, 5);
    fill(myColor);
    stroke(myColor);

}
}

class OddballParticle extends Particle
{
int myX,myY;


OddballParticle()
{
  myX = 225;
myY = 225;
}
void move(){
  int meow = (int)(Math.random()*4);
    if(meow == 0){
      myX = myX+8;
    }else if(meow == 1){
      myX = myX-8;
    }else if(meow == 2){
      myY = myY+8;
    }else{
      myY = myY -8;
    }
}
void show(){
  rect(myX, myY, 10, 10);
   
}
}


