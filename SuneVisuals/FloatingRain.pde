// TODO:
// interactivity
// load different svgs

class FloatingRain extends Composition
{
	Agent[] agents;

	FloatingRain()
	{
		theDirection = SOUTHEAST;

		nAgents = 500;
		agents = new Agent[nAgents];

		if (theDirection == EAST || theDirection == WEST)
		{
			theX = width / 2;
			for (int i = 0; i < nAgents; i++)
			{
				theY = (float(height) / nAgents) * i;
				theSpeed = 2 + random(5);
				theDeviation = 2 + random(15);
				theMaxDiameter = 10 + random(80);

				agents[i] = new Agent(theX,
									  theY,
									  theDirection,
									  theSpeed,
									  theDeviation,
									  theMaxDiameter);
			}	
		}

		else
		{
			theY = height / 2;
			for (int i = 0; i < nAgents; i++)
			{
				theX = (float(width) / nAgents) * i;
				theSpeed = 2 + random(5);
				theDeviation = 2 + random(15);
				theMaxDiameter = 30 + random(50);

				agents[i] = new Agent(theX,
									  theY,
									  theDirection,
									  theSpeed,
									  theDeviation,
									  theMaxDiameter);
			}
		}	
	}

	void initialize()
	{

	}

	void update()
	{
		for (int i = 0; i < nAgents; i++)
		{
			agents[i].update(theDirection);
		}
	}

	void display()
	{
		noStroke();
		fill(0, 40);
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
		float speed;
		float diameter;
		float maxDiameter;
		float deviation;

		Agent(	float x, 
				float y, 
				int _theDirection, 
				float _speed, 
				float _deviation, 
				float _maxDiameter)
		{
			position = new PVector(x, y);
			direction = new PVector();
			theDirection = _theDirection;
			speed = _speed;
			deviation = _deviation;
			maxDiameter = _maxDiameter;
		}

		void update(int _theDirection)
		{
			theDirection = _theDirection;
			diameter = random(2, maxDiameter);
			// diameter = random(2, 15);

			if (theDirection == NORTH)
			{
				direction.x = random(-deviation, deviation);		
				direction.y = -speed;
			}
			if (theDirection == NORTHEAST)
			{
				direction.x = speed + random(-deviation, deviation);
				direction.y = -(speed + random(-deviation, deviation));
			}
			if (theDirection == EAST)
			{
				direction.x = speed;
				direction.y = random(-deviation, deviation);		
			}
			if (theDirection == SOUTHEAST)
			{
				direction.x = speed + random(-deviation, deviation);
				direction.y = speed + random(-deviation, deviation);
			}
			if (theDirection == SOUTH)
			{
				direction.x = random(-deviation, deviation);		
				direction.y = speed;
			}
			if (theDirection == SOUTHWEST)
			{
				direction.x = -(speed + random(-deviation, deviation));
				direction.y = speed + random(-deviation, deviation);
			}
			if (theDirection == WEST)
			{
				direction.x = -speed;
				direction.y = random(-deviation, deviation);		
			}
			if (theDirection == NORTHWEST)
			{
				direction.x = -(speed + random(-deviation, deviation));
				direction.y = -(speed + random(-deviation, deviation));
			}

			if (position.x > width) position.x = 0;
			if (position.x < 0) position.x = width;
			if (position.y > height) position.y = 0;
			if (position.y < 0) position.y = height;

			position.add(direction);
		}

		void display()
		{
			noFill();
			stroke (0, 125, 255, 30);
			strokeWeight(diameter * 0.15);
			ellipse(position.x, position.y, diameter, diameter);
		}
	}
}