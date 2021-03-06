import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class arcIdea004 extends PApplet {

// draw arc of random length
// decrease opacity over time
// move mouse to increase arc diameter

// define max diameter, make clusters of these spheres, move them

// TO FIX: currently, diameter can be negative or greater than maxDiameter

// TO DO: morph / grow over time from one position to next

int seed;
int initialArrangement;
int style;
int wrapStyle;
int x;
int y;
int nArcStructures;

ArcStructure[] arcStructures;

public void setup()
{
	size(1280, 720, OPENGL);
	// size(displayWidth, displayHeight, OPENGL);
	smooth();
	noFill();
	strokeCap(SQUARE);
	background(0);

	initialArrangement = 0;
	style = 1;
	wrapStyle = 1;

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

public void draw()
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

public void mousePressed()
{
	seed = PApplet.parseInt(random(10000));
	for (int i = 0; i < nArcStructures; i++)
		{
			arcStructures[i].initialize();
		}
}

public void keyPressed()
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
	int rosa;
	int yellow;
	int turquoise;
	int navy;
	int _drawColor;

	CircleSegment[] circleSegments = new CircleSegment[3];

	ArcStructure(float theX, float theY)
	{
		rosa = color(255, 127, 140, 150);
		yellow = color(255, 255, 0, 50);
		turquoise = color(5, 167, 134, 50);
		navy = color(13, 60, 116, 50);
		position = new PVector(theX, theY);
		direction = new PVector();
		arcDisplayStyle = 0;
		maxDiameter = height * random(0.1f);
		// maxDiameter = height * 0.05;
		speed = random(2);
		
		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i] = new CircleSegment();
		}
	}

	public void initialize()
	{
		changeDirection();
		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i].initialize();
		}
	}

	public void getNewParameters()
	{
		// get new direction
		changeDirection();

		for (int i = 0; i < circleSegments.length; i++)
			{
				circleSegments[i].getNewParameters();
			}	
	}

	public void changeDirection()
	{
		direction.x = random(-speed, speed);
		direction.y = random(-speed, speed);
	}

	// void update(float theX, float theY)
	public void update()
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
					// direction.x = -direction.x;
					direction.rotate(random(-0.1f, 0.1f));
				}
				if (position.y < 0 || position.y > height)
				{
					// direction.y = -direction.y;
					direction.rotate(random(-0.1f, 0.1f));
				}
				break;
		}

		position.add(direction);

		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i].update();
		}
	}

	public void display(int arcDisplayStyle, int drawColor)
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

		public void initialize()
		{
			angleSize = HALF_PI + random(HALF_PI);
			angleOrigin = random(1) * TWO_PI * 2;
			diameterOrigin = random(maxDiameter);
			diameterDestination = random(maxDiameter);
			rotationSpeed = random(0.02f) + 0.01f;
			growingSpeed = random(0.05f) + 0.01f;
			if (random(1) >= 0.5f)
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

		public void getNewParameters()
		{
			seed = PApplet.parseInt(random(10000));
			randomSeed(seed);
			angleOrigin = angleDestination;
			if (random(1) >= 0.5f)
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

		public void update()
		{
			// interpolate over time between origin and destination
			angleOrigin = lerp(angleOrigin, angleDestination, rotationSpeed);
			if (isGrowing)
			{
				diameterOrigin = lerp(diameterOrigin, diameterDestination, growingSpeed);
			}
		}

		public void display(int fillStyle, int theDrawColor)
		{
			if (theDrawColor == 0)
			{
				_drawColor = navy;
			}
			if (theDrawColor == 1)
			{
				_drawColor = yellow;
			}
			if (theDrawColor == 2)
			{
				_drawColor = rosa;
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
					stroke(255, 15);
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "arcIdea004" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
