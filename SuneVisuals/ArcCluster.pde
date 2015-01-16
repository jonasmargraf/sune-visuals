// arcIdea005.pde

// todo: speed control, color switching, resizing, random rotation amount

class ArcCluster extends Composition
{
	ArcStructure[] arcStructures;

	ArcCluster()
	{
		initialArrangement = 0;
		style = 1;
		wrapStyle = 0;
		arcStructures = new ArcStructure[100];
		drawAlpha = 100;
		backgroundColor = color(0);
		backgroundAlpha = 0;
		colorIndex_1 = BLACK;
		colorIndex_2 = WHITE;
		colorIndex_3 = TURQUOISE;
	}

	void initialize()
	{
		background(palette[BLACK]);
		
		switch(initialArrangement)
		{
			// CENTER
			case 0 :
				nArcStructures = 30;
				for (int i = 0; i < nArcStructures; i++)
				{
					arcStructures[i] = new ArcStructure(width / 2, height / 2);
					arcStructures[i].initialize();
				}
				break;		
			// GRID
			case 1 :
				nArcStructures = 0;
				for (x = 100; x < width; x += 300)
				{
					for (y = 100; y < height; y += 300)
					{
						arcStructures[nArcStructures] = new ArcStructure(x, y);
						arcStructures[nArcStructures].initialize();
						nArcStructures++;
					}
				}
				break;
		}
	}

	void getNewParameters()
	{
		for (int i = 0; i < nArcStructures; i++)
		{
			arcStructures[i].getNewParameters();
		}
	}

	void changeDirection()
	{
		for (int i = 0; i < nArcStructures; i++)
		{
			arcStructures[i].changeDirection();
		}
	}

	void update()
	{
		randomSeed(seed);

		// println(drawAlpha);

		if (frameCount % 10 == 0)
		{
			getNew = true;
			getNewParameters();
			getNew = false;		
		}

		if (changePath)
		{
			if (frameCount % 5 == 0)
			{
				changeDirection();
			}
			// changePath = false;		
		}

		for (int i = 0; i < nArcStructures; i++)
		{
			arcStructures[i].update();
		}
	}

	void display()
	{
		for (int i = 0; i < nArcStructures; i++)
		{
			if (i % 3 == 0)
			{
				arcStructures[i].display(style, colorIndex_1);
			}
			if (i % 3 == 1)
			{
				arcStructures[i].display(style, colorIndex_2);
			}
			if (i % 3 == 2)
			{
				arcStructures[i].display(style, colorIndex_3);
			}
		}
		// println("in display(), style = " + style);
	}

	class ArcStructure
	{
		PVector position;
		PVector	direction;
		float speed;
		float maxDiameter;
		int arcDisplayStyle;
		color white;
		color rosa;
		color magenta;
		color yellow;
		color turquoise;
		color navy;
		color _drawColor;
		float strokeAlpha;

		CircleSegment[] circleSegments = new CircleSegment[3];

		ArcStructure(float theX, float theY)
		{
			white = color(255);
			rosa = color(255, 127, 140);
			magenta = color(247, 0, 157);
			yellow = color(255, 255, 0);
			turquoise = color(5, 167, 134);
			navy = color(13, 60, 116);
			strokeAlpha = random(100);
			position = new PVector(theX, theY);
			direction = new PVector();
			arcDisplayStyle = 0;
			maxDiameter = height * random(0.1) + height * 0.01;
			speed = random(6, 11);
			
			for (int i = 0; i < circleSegments.length; i++)
			{
				circleSegments[i] = new CircleSegment();
			}
		}

		void initialize()
		{
			changeDirection();
			for (int i = 0; i < circleSegments.length; i++)
			{
				circleSegments[i].initialize();
			}
		}

		void getNewParameters()
		{
			for (int i = 0; i < circleSegments.length; i++)
				{
					circleSegments[i].getNewParameters();
				}	
		}

		void changeDirection()
		{
			direction.x = random(-speed, speed);
			direction.y = random(-speed, speed);
			// direction.rotate(random(-0.5, 0.5));
		}

		void update()
		{
			switch (wrapStyle) {
				case 0:
					// if outside canvas, enter from other side
					if (position.x < -maxDiameter)
					{
						position.x = width + maxDiameter;
					}
					if (position.x > width + maxDiameter)
					{
						position.x = -maxDiameter;
					}
					if (position.y < -maxDiameter)
					{
						position.y = height + maxDiameter;
					}
					if (position.y > height + maxDiameter)
					{
						position.y = -maxDiameter;
					}
					break;
				case 1:
					// if on canvas edge, change direction
					if (position.x < 0 || position.x > width)
					{
						direction.rotate(random(-0.1, 0.1));
					}
					if (position.y < 0 || position.y > height)
					{
						direction.rotate(random(-0.1, 0.1));
					}
					break;
			}

			for (int i = 0; i < nArcStructures; i++)
			{
				if (arcStructures[i].position != position)
				{
					if (arcStructures[i].position.dist(position) < maxDiameter)
					{
						// if direction of the two vectors is similar, rotate,
						// if not, stay on path
						if (PVector.angleBetween(arcStructures[i].direction, direction) < 15)
						{
							direction.rotate(random(-0.05, 0.05));
						}
					}
				}
			}
			// add control for rotation amount here
			direction.rotate(random(-0.05, 0.05));
			position.add(direction);

			// if (millis() % 500 <= 10)
			// {
			// 	getNewParameters();
			// 	println("getting new parameters at millis = ", millis());
			// }

			for (int i = 0; i < circleSegments.length; i++)
			{
				circleSegments[i].update();
			}
		}

		void display(int arcDisplayStyle, int drawColor)
		{
			strokeAlpha -= 1;
			if (strokeAlpha <= -50)
			{
				strokeAlpha = 100;
			}

			for (int i = 0; i < circleSegments.length; i++)
			{
				circleSegments[i].display(arcDisplayStyle, drawColor, strokeAlpha);
			}
		}

		class CircleSegment
		{
			float angleSize;
			float angleOrigin;
			float diameterOrigin;
			float diameterDestination;
			float angleDestination;
			float rotationSpeed;
			float growingSpeed;
			boolean isGrowing;

			void initialize()
			{
				angleSize = HALF_PI + random(HALF_PI);
				angleOrigin = random(1) * TWO_PI * 2;
				diameterOrigin = random(maxDiameter);
				diameterDestination = random(maxDiameter);
				rotationSpeed = random(0.02) + 0.01;
				growingSpeed = random(0.05) + 0.01;
				if (random(1) >= 0.5)
				{
					angleDestination = angleOrigin + random(PI);
					isGrowing = true;
				}
				else
				{
					angleDestination = angleOrigin - random(PI);
					isGrowing = false;
				}				
			}

			void getNewParameters()
			{
				seed = int(random(10000));
				randomSeed(seed);
				angleOrigin = angleDestination;
				if (random(1) >= 0.5)
				{
					angleDestination = angleOrigin + random(TWO_PI);
					diameterOrigin = diameterDestination;
					diameterDestination = random(maxDiameter);
					isGrowing = true;
				}
				else
				{
					angleDestination = angleOrigin - random(TWO_PI);
					isGrowing = false;
				}
			}

			void update()
			{
				// interpolate over time between origin and destination
				angleOrigin = lerp(angleOrigin, angleDestination, rotationSpeed);
				if (isGrowing)
				{
					diameterOrigin = lerp(diameterOrigin, diameterDestination, growingSpeed);
				}
			}

			void display(int fillStyle, int theDrawColor, float strokeAlpha)
			{
				if (theDrawColor == 0)
				{
					// _drawColor = turquoise;
					_drawColor = magenta;
				}
				if (theDrawColor == 1)
				{
					// _drawColor = turquoise;
					_drawColor = navy;
				}
				if (theDrawColor == 2)
				{
					// _drawColor = turquoise;
					_drawColor = yellow;
				}

				// colorIndex_1 = theDrawColor;

				switch (fillStyle)
				{
					// PIE SLICES
					case 0 :
						// fill(255, 127, 140, 50);
						fill(palette[theDrawColor], strokeAlpha * 0.15);
						// stroke(255, 127, 140, 150);
						stroke(palette[WHITE], strokeAlpha);
						// stroke(0, 15);
						strokeWeight(1);
						arc(position.x,
							position.y,
							diameterOrigin,
							diameterOrigin,
							angleOrigin,
							angleOrigin + angleSize);
						break;
					// ARCS
					case 1 :
						noFill();
						// stroke(_drawColor);
						// stroke(255, 50);
						stroke(palette[WHITE], strokeAlpha * 0.2);
						strokeWeight(random(maxDiameter/4));
						arc(position.x,
							position.y,
							diameterOrigin,
							diameterOrigin,
							angleOrigin,
							angleOrigin + angleSize);
						// stroke(255, 127, 140, 150);
						stroke(palette[theDrawColor], strokeAlpha);
						// stroke(palette[BLACK], strokeAlpha);
						// stroke(255, 150);
						strokeWeight(1);
						arc(position.x,
							position.y,
							diameterOrigin,
							diameterOrigin,
							angleOrigin,
							angleOrigin + angleSize);
						break;
				}
			}
		}
	}
}