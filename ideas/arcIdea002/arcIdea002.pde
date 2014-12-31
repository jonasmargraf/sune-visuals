// draw arc of random length
// decrease opacity over time
// move mouse to increase arc diameter

// define max diameter, make clusters of these spheres, move them


// TO FIX: currently, diameter can be negative or greater than maxDiameter

// TO DO: morph / grow over time from one position to next

int nArcs;
int seed;
float rotator[];
float speedX;
float speedY;
float maxDiameter;
float diameter[];
float diameterOffset;
float diameter2 = 50;
float arcStart[];
float arcStart2;
float arcEnd;

void setup()
{
	// size(600, 400, OPENGL);
	size(displayWidth, displayHeight, OPENGL);
	smooth();
	noFill();
	strokeCap(SQUARE);
	background(255);

	nArcs = 12;
	maxDiameter = height;
	diameterOffset = 50;
	rotator = new float[nArcs];
	diameter = new float[nArcs];
	arcStart = new float[nArcs];

	calculateArcParameters(nArcs, maxDiameter);
}

void draw()
{
	noCursor();
	randomSeed(seed);
	background(255);
	speedX = float(mouseX) / width;
	speedY = float(mouseY) / height;

	translate(width / 2, height / 2);
	// rotateZ(rotator);
	arcStructure(0, 0, nArcs, height);
	// arcStructure(mouseX, mouseY, nArcs, height);
	
	for (int x = 50; x < width; x += 50)
	{
		for (int y = 50; y < height; y += 50)
		{
			// arcStructure(x, y, nArcs, maxDiameter);
		}
	}

	// rotator += 0.0001;
	frame.setTitle("" + frameRate);
}

void mousePressed()
{
	seed = int(random(10000));
	calculateArcParameters(nArcs, maxDiameter);

}

void arcStructure(float x, float y, int nArcs, float maxDiameter)
{
	for (int i = 0; i < nArcs; i++)
	{	
		for (int j = 0; j < nArcs; j++)
		{
			// rotator[j] = rotator[j] * 1;
			diameter[j] = (diameter[j] + speedY) % maxDiameter;
			arcStart[j] += rotator[j] * speedX;
		}
		// stroke(255, 127, 140, 50);
		// strokeWeight(random(maxDiameter/4));
		// arc(x, y, diameter[i], diameter[i], arcStart[i], arcStart[i] + HALF_PI);
		fill(255, 127, 140, 50);
		stroke(255, 127, 140, 150);
		strokeWeight(1);
		arc(x, y, diameter[i], diameter[i], arcStart[i], arcStart[i] + HALF_PI);
	}
}

void calculateArcParameters(int nArcs, float maxDiameter)
{
	float currentDiameter = maxDiameter;
	for (int i = 0; i < nArcs; i++)
	{
		currentDiameter = random(maxDiameter);
		diameter[i] = currentDiameter;
		// diameter[i] = random(maxDiameter) + diameterOffset;
		rotator[i] = random(-0.005, 0.005);
		arcStart[i] = random(1) * TWO_PI * 2;
		println(diameter[i]);
		// currentDiameter -= random(50);
	}
}