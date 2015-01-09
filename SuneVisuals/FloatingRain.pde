// TODO:
// interactivity
// load different svgs

// MIRA control:
// initialize()
// direction
// nAgents
// stepSize
// deviation
// diameter
// strokeWeight
// fill
// stroke

class FloatingRain extends Composition
{
	Agent[] agents;

	FloatingRain()
	{
		theDirection = SOUTHEAST;
		nAgents = 500;
		initialize();
	}

	void initialize()
	{
		nAgents = constrain(nAgents, 1, maxAgents);
		agents = new Agent[maxAgents];

		if (theDirection == EAST || theDirection == WEST)
		{
			theX = width / 2;
			for (int i = 0; i < maxAgents; i++)
			{
				// theY = (float(height) / nAgents) * i;
				theY = random(height);
				speedDeviation = random(speedDeviation);
				theStepSize = initialSpeed + random(5);
				theDeviation = 2 + random(15);
				theMaxDiameter = 10 + random(80);

				agents[i] = new Agent(theX,
									  theY,
									  theDirection,
									  theStepSize,
									  theDeviation,
									  theMaxDiameter);
			}	
		}

		else
		{
			theY = height / 2;
			for (int i = 0; i < maxAgents; i++)
			{
				// theX = (float(width) / nAgents) * i;
				theX = random(width);
				theStepSize = initialSpeed + random(5);
				theDeviation = 2 + random(15);
				theMaxDiameter = 30 + random(50);

				agents[i] = new Agent(theX,
									  theY,
									  theDirection,
									  theStepSize,
									  theDeviation,
									  theMaxDiameter);
			}
		}	
	}

	void update()
	{
		theStepSize = theStepSize + initialSpeed;

		for (int i = 0; i < nAgents; i++)
		{
			agents[i].update(theDirection, speed, theSize);
		}
	}

	void display()
	{
		noStroke();
		backgroundAlpha = 40;
		backgroundColor = color(0, 0, 0, backgroundAlpha);
		fill(backgroundColor);
		rect(0, 0, width, height);

		for (int i = 0; i < nAgents; i++)
		{
			agents[i].display();
		}
	}

	class Agent
	{
		PVector position;
		PVector direction;

		int theDirection;
		float stepSize;
		float diameter;
		float maxDiameter;
		float deviation;

		Agent(	float x, 
				float y, 
				int _theDirection, 
				float _stepSize, 
				float _deviation, 
				float _maxDiameter)
		{
			position = new PVector(x, y);
			direction = new PVector();
			theDirection = _theDirection;
			stepSize = _stepSize;
			deviation = _deviation;
			maxDiameter = _maxDiameter;
		}

		void update(int _theDirection, float _speed, float _size)
		{
			theDirection = _theDirection;
			diameter = random(2, maxDiameter) * _size;
			// diameter = random(2, 15);

			if (theDirection == NORTH)
			{
				direction.x = random(-deviation, deviation);		
				direction.y = -stepSize;
			}
			if (theDirection == NORTHEAST)
			{
				direction.x = stepSize + random(-deviation, deviation);
				direction.y = -(stepSize + random(-deviation, deviation));
			}
			if (theDirection == EAST)
			{
				direction.x = stepSize;
				direction.y = random(-deviation, deviation);		
			}
			if (theDirection == SOUTHEAST)
			{
				direction.x = stepSize + random(-deviation, deviation);
				direction.y = stepSize + random(-deviation, deviation);
			}
			if (theDirection == SOUTH)
			{
				direction.x = random(-deviation, deviation);		
				direction.y = stepSize;
			}
			if (theDirection == SOUTHWEST)
			{
				direction.x = -(stepSize + random(-deviation, deviation));
				direction.y = stepSize + random(-deviation, deviation);
			}
			if (theDirection == WEST)
			{
				direction.x = -stepSize;
				direction.y = random(-deviation, deviation);		
			}
			if (theDirection == NORTHWEST)
			{
				direction.x = -(stepSize + random(-deviation, deviation));
				direction.y = -(stepSize + random(-deviation, deviation));
			}

			if (position.x > width) position.x = 0;
			if (position.x < 0) position.x = width;
			if (position.y > height) position.y = 0;
			if (position.y < 0) position.y = height;

			direction.mult(_speed);
			position.add(direction);
		}

		void display()
		{
			noFill();
			drawAlpha = 30;
			drawColor = color(0, 125, 255, drawAlpha);
			stroke (drawColor);
			strokeWeight(diameter * 0.15);
			ellipse(position.x, position.y, diameter, diameter);
		}
	}
}