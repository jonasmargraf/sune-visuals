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

// TODO:
// individual frequency control
// modulation
// color

class Strings extends Composition
{
	int pathsCount = 3;
	int STRING_1 = 0;
	int STRING_2 = 1;
	int STRING_3 = 2;
	SinusoidalString string_1 = new SinusoidalString();
	SinusoidalString string_2 = new SinusoidalString();
	SinusoidalString string_3 = new SinusoidalString();

	Strings()
	{
		yOffset_1 = (height / pathsCount) * STRING_1 + (height / pathsCount) / 2;
		yOffset_2 = (height / pathsCount) * STRING_2 + (height / pathsCount) / 2;
		yOffset_3 = (height / pathsCount) * STRING_3 + (height / pathsCount) / 2;
		phiStep_1 = 0.005;
		phiStep_2 = -0.01;
		phiStep_3 = 0.002;
	}

	void initialize()
	{
		string_1.initialize();
		string_2.initialize();
		string_3.initialize();
	}

	void update()
	{
		string_1.update(xFrequencies[STRING_1], yFrequencies[STRING_1], phiStep_1);
		string_2.update(xFrequencies[STRING_2], yFrequencies[STRING_2], phiStep_2);
		string_3.update(xFrequencies[STRING_3], yFrequencies[STRING_3], phiStep_3);
	}

	void display()
	{
		string_1.display(yOffset_1);
		string_2.display(yOffset_2);
		string_3.display(yOffset_3);
	}

	class SinusoidalString
	{
		PVector[] lissajousPoints = new PVector[maxPoints + 1];
		float phi;

		SinusoidalString()
		{
			pointCount = 150;
			phi = 0;
			xScalar = 0.05;
			yScalar = 0.12;
			xMax = width * xScalar;
			yMax = height * yScalar;
			connectionRadius = width * 0.075;
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
			// drawColor = palette[FLIEDER];
			drawAlpha = 50;
			backgroundColor = palette[WHITE];
			// backgroundAlpha = 55;
			backgroundAlpha = 0;
			colorIndex_1 = BLACK;
			colorIndex_2 = TURQUOISE;
			lissajousPoints = new PVector[maxPoints + 1];

			for (int i = 0; i < pointCount; i++)
			{
				lissajousPoints[i] = new PVector();
			}

			background(backgroundColor);
		}

		void update(float theFreqX, float theFreqY, float phiStep)
		{
			xMax = width * xScalar;
			yMax = height * yScalar;
			for (int i = 0; i < pointCount; i++)
			{
				angle = map(i, 0, pointCount, 0, TWO_PI);

				lissajousPoints[i].x = (width / pointCount) * i * 1.1 + sin(angle * theFreqX + phi) * xMax;
				lissajousPoints[i].y = sin(angle * theFreqY) * yMax;
			}

			phi += phiStep;
		}

		void display(float theYOffset)
		{
			noStroke();
			fill(backgroundColor, backgroundAlpha);
			rect(0, 0, width, height);
			strokeWeight(lineWeight);
			// stroke(drawColor, drawAlpha * alphaScalar);
			noFill();

			pushMatrix();
			translate(0, theYOffset);

			for (int i = 0; i < pointCount; i++)
			{
				for (int j = 0; j < i; j++)
				{
					distance = PVector.dist(lissajousPoints[i], lissajousPoints[j]);
					alphaScalar = pow(1 / (distance / connectionRadius + 1), connectionRamp);
					
					if (distance <= (connectionRadius * 0.7))
					{
						drawColor = palette[colorIndex_1];
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

					else if (distance >= (connectionRadius * 0.7) && distance <= connectionRadius)
					{
						drawColor = palette[colorIndex_2];
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