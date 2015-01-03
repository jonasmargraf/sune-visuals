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

public class arcIdea003 extends PApplet {

// draw arc of random length
// decrease opacity over time
// move mouse to increase arc diameter

// define max diameter, make clusters of these spheres, move them

// TO FIX: currently, diameter can be negative or greater than maxDiameter

// TO DO: morph / grow over time from one position to next

int nArcs;
int seed;
int style;
float rotator[];
float speedX;
float speedY;
// float maxDiameter;
float diameter[];
float diameterOffset;
float diameter2 = 50;
float arcStart[];
float arcStart2;
float arcEnd;

ArcStructure arcStructure;

public void setup()
{
	size(1200, 800, OPENGL);
	// size(displayWidth, displayHeight, OPENGL);
	smooth();
	noFill();
	strokeCap(SQUARE);
	background(255);

	nArcs = 12;
	// maxDiameter = height;
	diameterOffset = 50;
	rotator = new float[nArcs];
	diameter = new float[nArcs];
	arcStart = new float[nArcs];

	arcStructure = new ArcStructure();

	arcStructure.initialize();

	// calculateArcParameters(nArcs, maxDiameter);
}

public void draw()
{
	noCursor();
	randomSeed(seed);
	background(0);
	// speedX = float(mouseX) / width;
	// speedY = float(mouseY) / height;

	translate(width / 2, height / 2);
	arcStructure.update();
	style = 1;
	arcStructure.display(style);
	// arcStructure(0, 0, nArcs, height);
	
	// for (int x = 50; x < width; x += 50)
	// {
	// 	for (int y = 50; y < height; y += 50)
	// 	{
	// 		// arcStructure(x, y, nArcs, maxDiameter);
	// 	}
	// }

	// rotator += 0.0001;
	frame.setTitle("" + frameRate);
}

public void mousePressed()
{
	seed = PApplet.parseInt(random(10000));
	arcStructure.initialize();
	// calculateArcParameters(nArcs, maxDiameter);
}

public void keyPressed()
{
	arcStructure.getNewParameters();
}

// void arcStructure(float x, float y, int nArcs, float maxDiameter)
// {
// 	for (int i = 0; i < nArcs; i++)
// 	{	
// 		for (int j = 0; j < nArcs; j++)
// 		{
// 			// rotator[j] = rotator[j] * 1;
// 			diameter[j] = (diameter[j] + speedY) % maxDiameter;
// 			arcStart[j] += rotator[j] * speedX;
// 		}
// 		// stroke(255, 127, 140, 50);
// 		// strokeWeight(random(maxDiameter/4));
// 		// arc(x, y, diameter[i], diameter[i], arcStart[i], arcStart[i] + HALF_PI);
// 		fill(255, 127, 140, 50);
// 		stroke(255, 127, 140, 150);
// 		strokeWeight(1);
// 		arc(x, y, diameter[i], diameter[i], arcStart[i], arcStart[i] + HALF_PI);
// 	}
// }

// void calculateArcParameters(int nArcs, float maxDiameter)
// {
// 	float currentDiameter = maxDiameter;
// 	for (int i = 0; i < nArcs; i++)
// 	{
// 		currentDiameter = random(maxDiameter);
// 		diameter[i] = currentDiameter;
// 		// diameter[i] = random(maxDiameter) + diameterOffset;
// 		rotator[i] = random(-0.005, 0.005);
// 		arcStart[i] = random(1) * TWO_PI * 2;
// 		println(diameter[i]);
// 		// currentDiameter -= random(50);
// 	}
// }

class ArcStructure
{
	float x;
	float y;
	float maxDiameter;
	int arcDisplayStyle;

	CircleSegment[] circleSegments = new CircleSegment[8];

	ArcStructure()
	{
		x = 0;
		y = 0;
		arcDisplayStyle = 0;
		maxDiameter = height * 0.5f;
		
		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i] = new CircleSegment();
		}
	}

	public void initialize()
	{
		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i].initialize();
		}
	}

	public void getNewParameters()
	{
	for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i].getNewParameters();
		}	
	}

	public void update()
	{
		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i].update();
		}
	}

	public void display(int arcDisplayStyle)
	{
		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i].display(arcDisplayStyle);
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
		// enum rotationDirection;
		// enum growingDirection;

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
				println(isGrowing);
				
			println(rotationSpeed);
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

		public void display(int displayStyle)
		{
			switch (displayStyle)
			{
				case 0 :
					fill(255, 127, 140, 50);
					stroke(255, 127, 140, 150);
					strokeWeight(1);
					arc(x, y, diameterOrigin, diameterOrigin, angleOrigin, angleOrigin + angleSize);
					break;
				case 1 :
					noFill();
					stroke(255, 127, 140, 50);
					strokeWeight(random(maxDiameter/4));
					arc(x, y, diameterOrigin, diameterOrigin, angleOrigin, angleOrigin + angleSize);
					stroke(255, 127, 140, 150);
					strokeWeight(1);
					arc(x, y, diameterOrigin, diameterOrigin, angleOrigin, angleOrigin + angleSize);
					break;
			}
		}
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "arcIdea003" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
