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
	// PShape shape_02;
	// PShape shape_03;
	// PShape shape_05;
	// PShape shape_076;
	// PShape shape_08;
	// PShape shape_082;
	// PShape shape_09;
	// PShape shape_152;
	// PShape shape_157;
	// PShape shape_164;
	// PShape shape_186;
	// PShape shape_A_01;
	// PShape shape_B_02;
	// PShape shape_B_10;
	// PShape shape_D_00;
	// PShape shape_D_01;
	// PShape shape_D_02;
	// PShape shape_D_15;
	// PShape shape_F_10;
	// PShape shape_J_11;
	// PShape shape_J_15;
	// PShape shape_K_03;
	// PShape shape_K_05;
	// PShape shape_K_10;
	// PShape shape_K_14;
	// PShape shape_K_15;
	// PShape konzent_kreise_sw.svg;
	// PShape module_5.svg;
	// PShape module_7.svg;
	// PShape schraffur_farbe.svg;
	// PShape schraffur_sw.svg;
	// PShape stern2_sw.svg;

	FloatingRain()
	{
		speed = 1;
		theDirection = SOUTHEAST;
		nAgents = 500;
		colorIndex_1 = NAVY;
		colorIndex_2 = NAVY;
		drawAlpha = 30;
		backgroundAlpha = 40;
		backgroundColor = palette[BLACK];

		// shapes[1] = loadShape("03.svg");
		// shapes[2] = loadShape("05.svg");
		// shapes[3] = loadShape("076.svg");
		// shapes[23] = loadShape("schraffur_sw.svg");
		// shapes[5] = loadShape("082.svg");
		// shapes[1] = loadShape("08.svg");
		// shapes[] = loadShape("09.svg");
		// shapes[] = loadShape("152.svg");
		// shapes[] = loadShape("157.svg");
		// shapes[1] = loadShape("186.svg");

		shapes[ASYM] = loadShape("asym.svg");
		shapes[CIRCROSS] = loadShape("circross.svg");
		shapes[CORNER] = loadShape("corner.svg");
		shapes[CROSS] = loadShape("cross.svg");
		shapes[DIAMOND] = loadShape("diamond.svg");
		shapes[EX] = loadShape("ex.svg");
		shapes[EX_SMALL] = loadShape("ex_small.svg");
		shapes[EX_THIN] = loadShape("ex_thin.svg");
		shapes[HALM] = loadShape("halm.svg");
		shapes[KEGEL] = loadShape("kegel.svg");
		shapes[KINKS] = loadShape("kinks.svg");
		shapes[KREISE] = loadShape("kreise.svg");
		shapes[PARALLEL] = loadShape("parallel.svg");
		shapes[STERN] = loadShape("stern.svg");

		for (int i = 0; i < 14; i++)
		{
			shapes[i].disableStyle();
		}

		initialize();
	}

	void initialize()
	{
		// backgroundColor = color(0, backgroundAlpha);
		fill(backgroundColor);
		rect(0, 0, width, height);
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
				theMaxDiameter = 20 + random(80);

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
		// noFill();

		for (int i = 0; i < nAgents; i++)
		{
			if (i < nAgents * 0.2)
			{
				drawColor = palette[colorIndex_1];
				stroke(drawColor, drawAlpha);
				fill(drawColor, drawAlpha);
			}
			else
			{
				drawColor = palette[colorIndex_2];
				stroke(drawColor, drawAlpha);
				fill(drawColor, drawAlpha);
			}

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
			// drawColor_1 = color(0, 125, 255, drawAlpha);
			strokeWeight(diameter * 0.15);
			// ellipse(position.x, position.y, diameter, diameter);
			shape(shapes[currentShape], position.x, position.y, diameter, diameter);
		}
	}
}