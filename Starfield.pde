Particle[] dot;
void setup()
{
	size(500,500);
	dot = new NormalParticle[300];
	for (int i = 0; i<300; i++)
	{
		dot[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	for (int i = 0; i<300; i++)
	{
		dot[i].move();
		dot[i].show();
	}
}
class NormalParticle implements Particle
{
	double myX;
	double myY;
	double mySpeed;
	double myAngle;
	int myColor;
	NormalParticle()
	{
		myX = 500/2;
		myY = 500/2;
		myColor = 255;
		myAngle = Math.random()*(2*Math.PI+1);
		mySpeed = Math.random()*6;
	}
	public void show()
	{
		ellipse((int)myX,(int)myY, 10,10);
	}
	public void move()
	{
		myY = myY + Math.sin(myAngle)*mySpeed;
		myX = myX + Math.cos(myAngle)*mySpeed;
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

