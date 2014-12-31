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
float rotator[];
float speedX;
float speedY;
float maxDiameter;
float diameter[];
float diameterOffset;
float diameter2 = 50;
float arcStart[];
float arcStart2;
float arcEnd;

ArcStructure arcStructure;

public void setup()
{
	// size(600, 400, OPENGL);
	size(displayWidth, displayHeight, OPENGL);
	smooth();
	noFill();
	strokeCap(SQUARE);
	background(255);

	nArcs = 12;
	maxDiameter = height;
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
	background(255);
	// speedX = float(mouseX) / width;
	// speedY = float(mouseY) / height;

	translate(width / 2, height / 2);
	arcStructure.update();
	arcStructure.display();
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

	CircleSegment[] circleSegments = new CircleSegment[1];

	ArcStructure()
	{
		x = 0;
		y = 0;
		maxDiameter = height;
		
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

	public void update()
	{
		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i].update();
		}
	}

	public void display()
	{
		for (int i = 0; i < circleSegments.length; i++)
		{
			circleSegments[i].display();
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
		// enum rotationDirection;
		// enum growingDirection;

		public void initialize()
		{
			angleSize = HALF_PI;
			angleOrigin = random(1) * TWO_PI * 2;
			diameterOrigin = random(maxDiameter);
			diameterDestination = diameterOrigin * 0.2f;
			angleDestination = angleOrigin + PI;
			rotationSpeed = 0.05f;
			growingSpeed = 0.05f;
		}

		public void update()
		{
			// interpolate over time between origin and destination
		}

		public void display()
		{
			fill(255, 127, 140, 50);
			stroke(255, 127, 140, 150);
			strokeWeight(1);
			arc(x, y, diameterOrigin, diameterOrigin, angleOrigin, angleOrigin + angleSize);
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
