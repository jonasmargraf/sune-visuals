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
	}

	void update()
	{	
		drawColor = color(palette[BLACK], drawAlpha);
		noiseSeed(nSeed);
		randomSeed(rSeed);
	}

	void display()
	{
		noStroke();
		stroke(drawColor, drawAlpha);
		strokeCap(SQUARE);
		strokeWeight(lineWeight);

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
			angle = noise(p.x / noiseScale, p.y / noiseScale, 20) * noiseStrength;

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