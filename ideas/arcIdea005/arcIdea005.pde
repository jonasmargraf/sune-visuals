// draw arc of random length
// decrease opacity over time
// move mouse to increase arc diameter

// define max diameter, make clusters of these spheres, move them

int seed;
int initialArrangement;
int style;
int wrapStyle;
int x;
int y;
int nArcStructures;

ArcStructure[] arcStructures;

void setup()
{
	// size(1280, 720, OPENGL);
	size(displayWidth, displayHeight, OPENGL);
	smooth();
	noFill();
	strokeCap(SQUARE);
	background(255);

	initialArrangement = 0;
	style = 1;
	wrapStyle = 0;

	arcStructures = new ArcStructure[200];


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
			for (x = 100; x < width; x += 200)
			{
				for (y = 100; y < height; y += 200)
				{
					arcStructures[nArcStructures] = new ArcStructure(x, y);
					arcStructures[nArcStructures].initialize();
					nArcStructures++;
				}
			}
			break;
	}

}

void draw()
{
	noCursor();
	randomSeed(seed);
	// background(0);
	// translate(width / 2, height / 2);
	for (int i = 0; i < nArcStructures; i++)
		{
			// arcStructures[i].update(x, y);
			arcStructures[i].update();
		}
	for (int i = 0; i < nArcStructures; i++)
		{
			if (i % 3 == 0)
			{
				arcStructures[i].display(style, 0);
			}
			if (i % 3 == 1)
			{
				arcStructures[i].display(style, 1);
			}
			if (i % 3 == 2)
			{
				arcStructures[i].display(style, 2);
			}

		}

	frame.setTitle("" + frameRate);
}

void mousePressed()
{
	seed = int(random(10000));
	for (int i = 0; i < nArcStructures; i++)
		{
			arcStructures[i].initialize();
		}
}

void keyPressed()
{
	for (int i = 0; i < nArcStructures; i++)
		{
			arcStructures[i].getNewParameters();
		}
}

class ArcStructure
{
	PVector position;
	PVector	direction;
	// float x;
	// float y;
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

	CircleSegment[] circleSegments = new CircleSegment[3];

	ArcStructure(float theX, float theY)
	{
		white = color(255, 50);
		rosa = color(255, 127, 140, 150);
		magenta = color(247, 0, 157, 50);
		yellow = color(255, 255, 0, 50);
		turquoise = color(5, 167, 134, 50);
		navy = color(13, 60, 116, 50);
		position = new PVector(theX, theY);
		direction = new PVector();
		arcDisplayStyle = 0;
		maxDiameter = height * random(0.1);
		// maxDiameter = height * 0.05;
		speed = random(3, 8);
		
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
		// get new direction
		changeDirection();

		for (int i = 0; i < circleSegments.length; i++)
			{
				circleSegments[i].getNewParameters();
			}	
	}

	void changeDirection()
	{
		direction.x = random(-speed, speed);
		direction.y = random(-speed, speed);
		// direction.random2D();
		// direction.mult(speed);
	}

	// void update(float theX, float theY)
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
					// if direction of the two vectors is similar, rotate, if not, stay on path
					if (PVector.angleBetween(arcStructures[i].direction, direction) < 15)
					{
						direction.rotate(random(-0.05, 0.05));
					}
				}
			}
		}

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
		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i].display(arcDisplayStyle, drawColor);
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

		void display(int fillStyle, int theDrawColor)
		{
			if (theDrawColor == 0)
			{
				_drawColor = white;
			}
			if (theDrawColor == 1)
			{
				_drawColor = navy;
			}
			if (theDrawColor == 2)
			{
				_drawColor = navy;
			}

			switch (fillStyle)
			{
				// PIE SLICES
				case 0 :
					// fill(255, 127, 140, 50);
					fill(255, 15);
					// stroke(255, 127, 140, 150);
					stroke(_drawColor);
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
					stroke(0, 5);
					strokeWeight(random(maxDiameter/4));
					arc(position.x,
						position.y,
						diameterOrigin,
						diameterOrigin,
						angleOrigin,
						angleOrigin + angleSize);
					// stroke(255, 127, 140, 150);
					stroke(_drawColor);
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