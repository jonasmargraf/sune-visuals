class NoiseHair extends Composition
{	
	// variable1 = controlSignals[0] * scalingFactor1;
	// variable2 = controlSignals[1] * scalingFactor2;
	// variable3 = controlSignals[2] * scalingFactor3;
	// variable4 = controlSignals[3] * scalingFactor4;
	// variable5 = controlSignals[4] * scalingFactor5;
	// variable6 = controlSignals[5] * scalingFactor6;
	// variable7 = controlSignals[6] * scalingFactor7;
	// variable8 = controlSignals[7] * scalingFactor8;

	int agentsCount = 2000;
	Agent[] agents = new Agent[10000];
	float noiseScale = 500;
	float noiseStrength = 2;
	float speed = 4;

	NoiseHair()
	{
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

	void update()
	{	
		backgroundColor = color(0);
		backgroundAlpha = 10;
		drawColor = color(255);
		drawAlpha = 220;
		noiseSeed(nSeed);
		randomSeed(rSeed);

		agentsCount = int(controlSignals[0] * 5000);
		noiseScale = controlSignals[1] * 500;
		noiseStrength = controlSignals[2] * 50;
		speed = controlSignals[3] * 20;
		// variable5 = controlSignals[4] * scalingFactor5;
		// variable6 = controlSignals[5] * scalingFactor6;
		// variable7 = controlSignals[6] * scalingFactor7;
		// variable8 = controlSignals[7] * scalingFactor8;
	}

	void display()
	{
		noStroke();
		fill(backgroundColor,backgroundAlpha);
		rect(0, 0, width, height);
		stroke(drawColor, drawAlpha);
		strokeCap(SQUARE);
		strokeWeight(3);

		for (int i = 0; i < agentsCount; i++)
		{
			agents[i].update();
		}
	}

	class Agent
	{
		PVector p;
		PVector pOld;
		float stepSize;
		float angle;

		Agent()
		{
			p = new PVector(random(width), random(height));
			pOld = new PVector(p.x, p.y);
			stepSize = random(2);
		}

		void update()
		{
			angle = noise(p.x / noiseScale, p.y / noiseScale, 300) * noiseStrength;

			p.x += cos(angle) * stepSize * speed;
			p.y += sin(angle) * stepSize * speed;

			if (p.x < -10) p.x = pOld.x = width + 10;
			if (p.x > width + 10) p.x = pOld.x = -10;
			if (p.y < -10) p.y = pOld.y = height + 10;
			if (p.y > height + 10) p.y = pOld.y = -10;

			// stroke((p.y / width) * 255, random(40), (p.x / width) * 255, drawAlpha);
			line(pOld.x, pOld.y, p.x, p.y);

			pOld.set(p);
		}
	}
}