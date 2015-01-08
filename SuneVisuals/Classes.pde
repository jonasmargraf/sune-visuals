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

	// SINUSOIDAL_PATH

	int pathsCount;
	int maxPoints = 200;
	int pointCount;
	// PVector[] lissajousPoints;
	PVector[] lissajousPoints = new PVector[maxPoints + 1];
	float[] xFrequencies;
	float[] yFrequencies;
	float freqX;
	float freqY;
	float phi;
	float angle;
	float xMax;
	float yMax;
	float xScalar;
	float yScalar;
	float yOffset;
	float distance;
	float connectionRadius;
	float connectionRamp;
	float randomOffset;
	float lineWeight;
	float alphaScalar;

	// FLOATING_RAIN

	// ARC_BRUSH

	void initialize()
	{
	}

	void test()
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

