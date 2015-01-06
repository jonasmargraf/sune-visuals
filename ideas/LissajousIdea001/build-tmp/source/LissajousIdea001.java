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

public class LissajousIdea001 extends PApplet {

int pointCount = 200;
PVector[] lissajousPoints;

float freqX = 4.32f;
float freqY = 3.023f;
// phase offset, in 0 - TWO_PI range
float phi = 0;

float lineWeight = 1;
float lineAlpha = 150;
float alphaScalar;
int lineColor = color(0);
float connectionRadius = 100;
float connectionRamp = 6;

float x;
float y;
float angle;
float xScalar;
float yScalar;
float distance;

public void setup()
{
	size(displayWidth, displayHeight, OPENGL);
	smooth();
	background(255);

	xScalar = width * 0.45f;
	yScalar = height * 0.45f;

	initializeLissajousPoints();
	calculateLissajousPoints();
}

public void draw()
{
	drawLissajous();
	frame.setTitle("" + frameRate);
}

public void initializeLissajousPoints()
{
	lissajousPoints = new PVector[pointCount + 1];

	for (int i = 0; i <= pointCount; i++)
	{
		lissajousPoints[i] = new PVector();
	}
	
}

public void calculateLissajousPoints()
{
	for (int i = 0; i <= pointCount; i++)
	{
		angle = map(i, 0, pointCount, 0, TWO_PI);

		lissajousPoints[i].x = sin(angle * freqX + phi) * xScalar;
		lissajousPoints[i].y = sin(angle * freqY) * yScalar;
	}
}

public void drawLissajous()
{
	strokeWeight(lineWeight);
	stroke(lineColor);
	noFill();

	pushMatrix();
	translate(width / 2, height / 2);

	for (int i = 0; i < pointCount; i++)
	{
		for (int j = 0; j < i; j++)
		{
			distance = PVector.dist(lissajousPoints[i], lissajousPoints[j]);
			alphaScalar = pow(1 / (distance / connectionRadius + 1), connectionRamp);
			
			if (distance <= connectionRadius)
			{
				stroke(lineColor, lineAlpha * alphaScalar);
				line(lissajousPoints[i].x,
					 lissajousPoints[i].y,
					 lissajousPoints[j].x,
					 lissajousPoints[j].y);
			}
			// println("" + i + " / " + j);
		}
	}
	// println("finished drawing");
	popMatrix();
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "LissajousIdea001" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
