int pointCount = 200;
PVector[] lissajousPoints;

float freqX = 8.32;
float freqY = 4.723;
// phase offset, in 0 - TWO_PI range
float phi = 0;

float lineWeight = 1;
float lineAlpha = 50;
float alphaScalar;
color lineColor = color(0);
float connectionRadius = 100;
float connectionRamp = 6;
float randomOffset = 1;

float x;
float y;
float angle;
float xScalar;
float yScalar;
float distance;

void setup()
{
	size(displayWidth, displayHeight, OPENGL);
	smooth();
	background(255);

	xScalar = width * 0.05;
	yScalar = height * 0.15;
	connectionRadius = width * 0.05;

	initializeLissajousPoints();
	calculateLissajousPoints();
}

void draw()
{
	// background(255);
	// frameRate(5);
	// freqX += 0.001;
	// freqY += random(0.001);
	calculateLissajousPoints();
	drawLissajous();
	frame.setTitle("" + frameRate);
}

void initializeLissajousPoints()
{
	lissajousPoints = new PVector[pointCount + 1];

	for (int i = 0; i <= pointCount; i++)
	{
		lissajousPoints[i] = new PVector();
	}
	
}

void calculateLissajousPoints()
{
	for (int i = 0; i <= pointCount; i++)
	{
		angle = map(i, 0, pointCount, 0, TWO_PI);

		// lissajousPoints[i].x = sin(angle * freqX + phi) * xScalar;
		lissajousPoints[i].x = (width / (pointCount + 1)) * i + sin(angle * freqX + phi) * xScalar;
		lissajousPoints[i].y = sin(angle * freqY) * yScalar;
	}
}

void drawLissajous()
{
	strokeWeight(lineWeight);
	stroke(lineColor);
	noFill();

	pushMatrix();
	// translate(width / 2, height / 2);
	translate(0, height / 2);

	for (int i = 0; i < pointCount; i++)
	{
		for (int j = 0; j < i; j++)
		{
			distance = PVector.dist(lissajousPoints[i], lissajousPoints[j]);
			alphaScalar = pow(1 / (distance / connectionRadius + 1), connectionRamp);
			
			if (distance <= connectionRadius)
			{
				lissajousPoints[i].x = lissajousPoints[i].x + random(-randomOffset, randomOffset);
				lissajousPoints[j].x = lissajousPoints[j].x + random(-randomOffset, randomOffset);
				stroke(lineColor, lineAlpha * alphaScalar);
				line(lissajousPoints[i].x,
					 lissajousPoints[i].y,
					 lissajousPoints[j].x,
					 lissajousPoints[j].y);
			}
			// println("" + i + " / " + j);
		}
	}
	// println("finished drawing");
	popMatrix();
}