class Composition
{
	float x;
	float y;
	int nSeed = int(random(1000));
	int rSeed = int(random(1000));
	color backgroundColor;
	float backgroundAlpha;
	color drawColor;
	float drawAlpha;

	// NOISE_HAIR

	// STRINGS
	int pathsCount;
	int maxPoints = 150;
	int pointCount;
	float[] xFrequencies = {4.23,	78.423,	3.023};
	float[] yFrequencies = {13.103,	17,	2.43};
	float freqX;
	float freqY;
	float phi;
	float angle;
	float xMax;
	float yMax;
	float xScalar;
	float yScalar;
	float yOffset_1;
	float yOffset_2;
	float yOffset_3;
	float distance;
	float connectionRadius;
	float connectionRamp;
	float randomOffset;
	float lineWeight;
	float alphaScalar;

	// FLOATING_RAIN
	int NORTH = 0;
	int NORTHEAST = 1; 
	int EAST = 2;
	int SOUTHEAST = 3;
	int SOUTH = 4;
	int SOUTHWEST = 5;
	int WEST = 6;
	int NORTHWEST= 7;
	int nAgents;
	float theSpeed = 5;
	float theDeviation = 15;
	int theDirection;
	float theMaxDiameter;
	float theX, theY;

	// ARC_CLUSTER

	void initialize()
	{
	}

	void update()
	{		
	}

	void display()
	{
	}

	void seed()
	{
		nSeed = int(random(1000));
		rSeed = int(random(1000));
		println("nSeed = " + nSeed + "    |    " + "rSeed = " + rSeed);
	}
}

class Idea05 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(103, 86, 255);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea05", 0, 0);
	}	
}

class Idea06 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(204, 74, 14);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea06", 0, 0);
	}	
}

class Idea07 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(204, 14, 169);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea07", 0, 0);
	}	
}

class Idea08 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(255, 226, 91);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea08", 0, 0);
	}	
}

class Idea09 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(116, 255, 249);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea09", 0, 0);
	}	
}

class Idea10 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(255, 181, 91);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea10", 0, 0);
	}	
}

