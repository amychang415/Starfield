Particle[] dot;
void setup()
{
	size(500,500);
	dot = new Particle[300];
	for (int i = 0; i<300; i++)
	{
		dot[i] = new NormalParticle();
	}
	dot[299] = new JumboParticle();
	dot[298] = new OddballParticle();
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
interface Particle
{
	public void show();
	public void move();
}
class NormalParticle implements Particle
{
	double myX;
	double myY;
	double mySpeed;
	double myAngle;
	color c;
	NormalParticle()
	{
		myX = 500/2;
		myY = 500/2;
		c = 255;
		myAngle = Math.random()*(2*Math.PI+1);
		mySpeed = Math.random()*5+1;
	}
	public void show()
	{
		fill(c);
		ellipse((int)myX,(int)myY, 10,10);
	}
	public void move()
	{
		myY = myY + Math.sin(myAngle)*mySpeed;
		myX = myX + Math.cos(myAngle)*mySpeed;
	}
}

class OddballParticle implements Particle
{
	double myX;
	double myY;
	color c;
	OddballParticle()
	{
		myX = 500/2;
		myY = 500/2;
		c = color(56,125,46);
	}
	public void show()
	{
		fill(c);
		ellipse((int)myX,(int)myY, 50,50);
	}
	public void move()
	{
		myY = myY + ((int)(Math.random()*3)-1);
		myX = myX + ((int)(Math.random()*3)-1);
	}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		fill(c);
		ellipse((int)myX,(int)myY, 50,50);
	}
}

