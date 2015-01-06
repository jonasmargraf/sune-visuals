// LissajousIdea002.pde

// to control via MIRA:
// pointCount
// freqX
// freqY
// phi
// xScalar
// yScalar
// randomOffset
// lineWeight

class SinusoidalPath extends Composition
{
	SinusoidalPath()
	{
		// maxPoints = 2000;
		pointCount = 200;
		// lissajousPoints = new PVector[maxPoints + 1];
		freqX = 4.32;
		freqY = 1.023;
		phi = 0;
		xScalar = 0.05;
		yScalar = 0.15;
		xMax = width * xScalar;
		yMax = height * yScalar;
		connectionRadius = width * 0.05;
		connectionRamp = 6;
		randomOffset = 1;
		lineWeight = 1;

		for (int i = 0; i <= pointCount; i++)
		{
			lissajousPoints[i] = new PVector();
		}
	}

	void initialize()
	{
		drawColor = color(0);
		drawAlpha = 150;
		backgroundColor = color(255);
		backgroundAlpha = 55;
		lissajousPoints = new PVector[maxPoints + 1];

		for (int i = 0; i <= pointCount; i++)
		{
			lissajousPoints[i] = new PVector();
		}

		background(backgroundColor);
	}

	void update()
	{	
		xMax = width * xScalar;
		yMax = height * yScalar;
		for (int i = 0; i <= pointCount; i++)
		{
			angle = map(i, 0, pointCount, 0, TWO_PI);

			lissajousPoints[i].x = (width / pointCount) * i * 1.1 + sin(angle * freqX + phi) * xMax;
			// lissajousPoints[i].x = (width / pointCount) * i * 1.1;
			lissajousPoints[i].y = sin(angle * freqY) * yMax;
		}
	}

	void display()
	{
		noStroke();
		fill(backgroundColor, backgroundAlpha);
		rect(0, 0, width, height);
		strokeWeight(lineWeight);
		stroke(drawColor);
		noFill();

		pushMatrix();
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
					lissajousPoints[i].y = lissajousPoints[i].y + random(-randomOffset, randomOffset);
					lissajousPoints[j].y = lissajousPoints[j].y + random(-randomOffset, randomOffset);
					stroke(drawColor, drawAlpha * alphaScalar);
					line(lissajousPoints[i].x,
						 lissajousPoints[i].y,
						 lissajousPoints[j].x,
						 lissajousPoints[j].y);
				}
			}
		}
		popMatrix();
	}
}