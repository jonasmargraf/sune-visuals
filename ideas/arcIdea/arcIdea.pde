// draw arc of random length
// decrease opacity over time
// move mouse to increase arc diameter

// define max diameter, make clusters of these spheres, move them

float diameter;
float diameterOffset = 20;
float diameter2 = 50;
int counter;
float arcStart;
float arcStart2;
float arcEnd;

void setup()
{
	size(600, 400, OPENGL);
	smooth();
	noFill();
	background(255);
}

void draw()
{
	// background(255);
	translate(width / 2, height / 2);
	counter++;
	if (frameCount % 60 == 0)
	{
		diameter = (diameter + diameterOffset + random(50)) % height;
		arcStart = random(1) * TWO_PI * 2;
		diameter2 = (diameter + random(50)) % height;
		arcStart2 = random(1) * TWO_PI * 2;
	}
	// arcEnd = (counter * 0.2) % PI;
	arcEnd = arcStart + PI;
	// noFill();
	fill(255, 5);
	stroke(255, 255);
	arc(0, 0, diameter, diameter, arcStart, arcEnd);

	arcEnd = arcStart2 + PI;
	fill(255, 127, 140, 2);
	stroke(255, 127, 140, 150);
	arc(0, 0, diameter2, diameter2, arcStart2, arcEnd);
}

void mousePressed()
{
	// diameter = counter * 0.2 + 50;
	counter = 0;
}