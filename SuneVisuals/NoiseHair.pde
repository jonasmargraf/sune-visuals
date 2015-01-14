class NoiseHair extends Composition
{	
	Agent[]	agents = new Agent[10000];

	NoiseHair()
	{
		agentsCount = 2000;
		noiseScale = 500;
		noiseStrength = 2;
		speed = 4;

		for (int i = 0; i < agents.length; i++)
		{
			agents[i] = new Agent();
		}
	}

	boolean isActive()
	{
		if (currentComposition == 0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	void initialize()
	{
		backgroundColor = color(255);
		backgroundAlpha = 10;
		drawAlpha = 120;
		lineWeight = 1;
		fill(backgroundColor,backgroundAlpha);
		rect(0, 0, width, height);
		colorIndex_1 = MAGENTA;
		colorIndex_2 = WHITE;
		colorIndex_3 = NAVY;
	}

	void update()
	{	
		// drawColor_1 = color(palette[MAGENTA]);
		// drawColor_2 = color(palette[MAGENTA]);
		// drawColor_3 = color(palette[MAGENTA]);
		noiseSeed(nSeed);
		randomSeed(rSeed);
	}

	void display()
	{
		for (int i = 0; i < agentsCount; i++)
		{
			if (i < (agentsCount * 0.33))
			{
				// agentColor = drawColor_1;
				drawColor = palette[colorIndex_1];
			}

			if (i > (agentsCount * 0.33) && i < (agentsCount * 0.66))
			{
				// agentColor = drawColor_2;
				drawColor = palette[colorIndex_2];
			}

			if (i > (agentsCount * 0.66))
			{
				// agentColor = drawColor_3;
				drawColor = palette[colorIndex_3];
			}

			stroke(drawColor, drawAlpha);
			strokeCap(SQUARE);
			strokeWeight(lineWeight);

			agents[i].update();
		}
	}

	class Agent
	{
		PVector p;
		PVector pOld;
		float stepSize;
		float angle;
		float noiseZ, noisezVelocity = 0.001;

		Agent()
		{
			p = new PVector(random(width), random(height));
			pOld = new PVector(p.x, p.y);
			stepSize = random(2);
			setNoiseZRange(0.4);
		}

		void setNoiseZRange(float theNoiseZRange)
		{
			noiseZ = random(theNoiseZRange);
		}

		void update()
		{

			angle = noise(p.x / noiseScale, p.y / noiseScale, noiseZ) * noiseStrength;

			p.x += cos(angle) * stepSize * speed;
			p.y += sin(angle) * stepSize * speed;

			if (p.x < -10) p.x = pOld.x = width + 10;
			if (p.x > width + 10) p.x = pOld.x = -10;
			if (p.y < -10) p.y = pOld.y = height + 10;
			if (p.y > height + 10) p.y = pOld.y = -10;

			// stroke((p.y / width) * 255, random(40), (p.x / width) * 255, drawAlpha);
			line(pOld.x, pOld.y, p.x, p.y);

			pOld.set(p);

			noiseZ += noisezVelocity;
		}
	}
}