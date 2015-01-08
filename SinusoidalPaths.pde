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

class Strings extends Composition
{
	int pathsCount = 2;
	SinusoidalString[] strings;

	Strings()
	{
		pathsCount = constrain(pathsCount, 1, 3);
		strings = new SinusoidalString[pathsCount];
		xFrequencies = new float[pathsCount];
		yFrequencies = new float[pathsCount];

		xFrequencies[0] = 1.23;
		yFrequencies[0] = 43.103;
		xFrequencies[1] = 78.423;
		yFrequencies[1] = 10;
		// xFrequencies[2] = 0.023;
		// yFrequencies[2] = 3.43;

		for (int i = 0; i < pathsCount; i++)
		{
			strings[i] = new SinusoidalString();
		}
	}

	void initialize()
	{
		for (int i = 0; i < pathsCount; i++)
		{
			// xFrequencies[i] = 4.32;
			// yFrequencies[i] = 1.023;
			strings[i].initialize();
		}
	}

	void update()
	{
		for (int i = 0; i < pathsCount; i++)
		{
			// freqX = xFrequencies[i];
			// freqY = yFrequencies[i];
			strings[i].update(xFrequencies[i], xFrequencies[i], i);
			// strings[i].update(i);
		}
	}

	void display()
	{
		for (int i = 0; i < pathsCount; i++)
		{
			yOffset = (height / pathsCount) * i + (height / pathsCount) / 2;
			strings[i].display(yOffset);
			// println("freqX = " + freqX);
			// println("freqY = " + freqY);
		}
	}

	class SinusoidalString
	{
		SinusoidalString()
		{
			// maxPoints = 2000;
			pointCount = 200;
			// lissajousPoints = new PVector[maxPoints + 1];
			// freqX = 4.32;
			// freqY = 1.023;
			phi = 0;
			xScalar = 0.05;
			yScalar = 0.15;
			xMax = width * xScalar;
			yMax = height * yScalar;
			yOffset = height / 2;
			connectionRadius = width * 0.075;
			// connectionRadius = width * 0.75;
			connectionRamp = 6;
			randomOffset = 1;
			lineWeight = 1;

			for (int i = 0; i < pointCount; i++)
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

			for (int i = 0; i < pointCount; i++)
			{
				lissajousPoints[i] = new PVector();
			}

			background(backgroundColor);
		}

		void update(float theFreqX, float theFreqY, int index)
		{	
			// freqX = theFreqX;
			// freqY = theFreqY;
			xMax = width * xScalar;
			yMax = height * yScalar;
			for (int i = 0; i < pointCount; i++)
			{
				angle = map(i, 0, pointCount, 0, TWO_PI);

				lissajousPoints[i].x = (width / pointCount) * i * 1.1 + sin(angle * xFrequencies[index] + phi) * xMax;
				// lissajousPoints[i].x = (width / pointCount) * i * 1.1;
				lissajousPoints[i].y = sin(angle * yFrequencies[index]) * yMax;
				// println("yFrequencies[" + index + "] = " + yFrequencies[index]);
			}
			// println("xFrequencies[" + index + "] = " + xFrequencies[index]);
			// println("yFrequencies[" + index + "] = " + yFrequencies[index]);
		}

		void display(float theYOffset)
		{
			// yOffset = theYOffset;
			noStroke();
			fill(backgroundColor, backgroundAlpha);
			rect(0, 0, width, height);
			strokeWeight(lineWeight);
			stroke(drawColor);
			noFill();

			pushMatrix();
			translate(0, theYOffset);

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
}