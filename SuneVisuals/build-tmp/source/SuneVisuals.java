import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import oscP5.*; 
import netP5.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SuneVisuals extends PApplet {

// TO DO:
// - dynamic color palette generation 
// (gradients, mix with half of all objects / agents / lines being white or black...)
// 
// - automatic controlSignal mapping
// 
// 




boolean DEBUG = true;

OscP5 oscP5;
NetAddress myRemoteLocation;

Composition[] compositions;
int currentComposition;
boolean compositionChanged;

float[] controlSignals;
int currentController;
float currentControllerValue;
// float control01;
// float control02;
// float control03;
// float control04;
// float control05;
// float control06;
// float control07;
// float control08;

int NOISE_HAIR = 0;
int SINUSOIDAL_PATH = 1;
int FLOATING_RAIN = 2;
int ARC_BRUSH = 3;

public void setup()
{
	// OSC initialization
	oscP5 = new OscP5(this, 7777);
	// MaxForLive sends messages to to this address:
	myRemoteLocation = new NetAddress("127.0.0.1", 7778);

	// size(displayWidth, displayHeight, "processing.core.PGraphicsRetina2D", P2D);
	size(displayWidth, displayHeight, OPENGL);
	smooth();
	background(0);

	controlSignals = new float[8];

	compositions = new Composition[10];
	compositions[NOISE_HAIR] = new NoiseHair();
	compositions[SINUSOIDAL_PATH] = new SinusoidalPath();
	compositions[FLOATING_RAIN] = new FloatingRain();
	compositions[ARC_BRUSH] = new ArcBrush();
	compositions[4] = new Idea05();
	compositions[5] = new Idea06();
	compositions[6] = new Idea07();
	compositions[7] = new Idea08();
	compositions[8] = new Idea09();
	compositions[9] = new Idea10();

	currentComposition = 0;
}

public boolean sketchFullScreen()
{
	// use window mode, display fps on top
	if (DEBUG)
	{
  		return false;
	}
	// force fullscreen mode
	else
	{
		return true;
	}
}

public void draw()
{
	if (compositionChanged)
	{
		compositions[currentComposition].initialize();
		compositionChanged = false;
	}

	compositions[currentComposition].update();
	compositions[currentComposition].display();

	if (DEBUG)
	{
		frame.setTitle(" " + frameRate);
	}
}
// arcIdea005.pde
class ArcBrush extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(56,255, 167);
	}

	public void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5f * width, 0.5f * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea04", 0, 0);
	}
}
class Composition
{
	float x;
	float y;
	int nSeed = PApplet.parseInt(random(1000));
	int rSeed = PApplet.parseInt(random(1000));
	int backgroundColor;
	float backgroundAlpha;
	int drawColor;
	float drawAlpha;

	// NOISE_HAIR

	// SINUSOIDAL_PATH

	int maxPoints = 200;
	int pointCount;
	// PVector[] lissajousPoints;
	PVector[] lissajousPoints = new PVector[maxPoints + 1];
	float freqX;
	float freqY;
	float phi;
	float angle;
	float xMax;
	float yMax;
	float xScalar;
	float yScalar;
	float distance;
	float connectionRadius;
	float connectionRamp;
	float randomOffset;
	float lineWeight;
	float alphaScalar;

	// FLOATING_RAIN

	// ARC_BRUSH

	public void initialize()
	{
	}

	public void test()
	{
	}

	public void update()
	{		
	}

	public void display()
	{
	}

	public void seed()
	{
		nSeed = PApplet.parseInt(random(1000));
		rSeed = PApplet.parseInt(random(1000));
		println("nSeed = " + nSeed + "    |    " + "rSeed = " + rSeed);
	}
}

class Idea05 extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(103, 86, 255);
	}

	public void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5f * width, 0.5f * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea05", 0, 0);
	}	
}

class Idea06 extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(204, 74, 14);
	}

	public void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5f * width, 0.5f * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea06", 0, 0);
	}	
}

class Idea07 extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(204, 14, 169);
	}

	public void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5f * width, 0.5f * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea07", 0, 0);
	}	
}

class Idea08 extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(255, 226, 91);
	}

	public void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5f * width, 0.5f * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea08", 0, 0);
	}	
}

class Idea09 extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(116, 255, 249);
	}

	public void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5f * width, 0.5f * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea09", 0, 0);
	}	
}

class Idea10 extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(255, 181, 91);
	}

	public void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5f * width, 0.5f * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea10", 0, 0);
	}	
}

// dumbAgent_restrictedRandom002.pde

class FloatingRain extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(204, 188, 32);
	}

	public void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5f * width, 0.5f * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea03", 0, 0);
	}
}
class NoiseHair extends Composition
{	
	// variable1 = controlSignals[0] * scalingFactor1;
	// variable2 = controlSignals[1] * scalingFactor2;
	// variable3 = controlSignals[2] * scalingFactor3;
	// variable4 = controlSignals[3] * scalingFactor4;
	// variable5 = controlSignals[4] * scalingFactor5;
	// variable6 = controlSignals[5] * scalingFactor6;
	// variable7 = controlSignals[6] * scalingFactor7;
	// variable8 = controlSignals[7] * scalingFactor8;

	int agentsCount = 2000;
	Agent[] agents = new Agent[10000];
	float noiseScale = 500;
	float noiseStrength = 2;
	float speed = 4;

	NoiseHair()
	{
		for (int i = 0; i < agents.length; i++)
		{
			agents[i] = new Agent();
		}
	}

	public boolean isActive()
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

	public void initialize()
	{
	}

	public void update()
	{	
		backgroundColor = color(0);
		backgroundAlpha = 10;
		drawColor = color(255);
		drawAlpha = 220;
		noiseSeed(nSeed);
		randomSeed(rSeed);

		agentsCount = PApplet.parseInt(controlSignals[0] * 5000);
		noiseScale = controlSignals[1] * 500;
		noiseStrength = controlSignals[2] * 50;
		speed = controlSignals[3] * 20;
		// variable5 = controlSignals[4] * scalingFactor5;
		// variable6 = controlSignals[5] * scalingFactor6;
		// variable7 = controlSignals[6] * scalingFactor7;
		// variable8 = controlSignals[7] * scalingFactor8;
	}

	public void display()
	{
		noStroke();
		fill(backgroundColor,backgroundAlpha);
		rect(0, 0, width, height);
		stroke(drawColor, drawAlpha);
		strokeCap(SQUARE);
		strokeWeight(3);

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

		public void update()
		{
			angle = noise(p.x / noiseScale, p.y / noiseScale, 300) * noiseStrength;

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
public void oscEvent(OscMessage theOscMessage)
{

	// println("Incoming OSC Message: " +  theOscMessage);

	if (theOscMessage.checkAddrPattern("/quit"))
	{
		exit();
	}

	if (theOscMessage.checkAddrPattern("/composition"))
	{
		if (currentComposition != theOscMessage.get(0).intValue())
		{
			currentComposition = constrain(theOscMessage.get(0).intValue(),
											0,
											(compositions.length - 1));
			compositionChanged = true;							
		}

	}

	if (theOscMessage.checkAddrPattern("/seed"))
	{
		compositions[currentComposition].seed();
	}

	if (theOscMessage.checkAddrPattern("/controlSignal"))
	{
		int currentController = theOscMessage.get(0).intValue();
		float currentControllerValue = theOscMessage.get(1).floatValue();
		controlSignals[currentController] = currentControllerValue;

		println("theOscMessage.get(0).intValue() = " + theOscMessage.get(0).intValue());
		println("theOscMessage.get(1).floatValue() = " + theOscMessage.get(1).floatValue());
		println(controlSignals[currentController]);

		// TO DO: send this controller array only to currently active composition,
		// then map it to parameters there.
	}

	/*

	if (theOscMessage.checkAddrPattern("/control01"))
	{
		control01 = theOscMessage.get(0).floatValue();
		// println("control01 = " + control01);
	}

	if (theOscMessage.checkAddrPattern("/control02"))
	{
		control02 = theOscMessage.get(0).floatValue();
		// println("control02 = " + control02);
	}

	if (theOscMessage.checkAddrPattern("/control03"))
	{
		control03 = theOscMessage.get(0).floatValue();
		// println("control03 = " + control03);
	}

	if (theOscMessage.checkAddrPattern("/control04"))
	{
		control04 = theOscMessage.get(0).floatValue();
		// println("control04 = " + control04);
	}

	if (theOscMessage.checkAddrPattern("/control05"))
	{
		control05 = theOscMessage.get(0).floatValue();
		// println("control05 = " + control05);
	}

	if (theOscMessage.checkAddrPattern("/control06"))
	{
		control06 = theOscMessage.get(0).floatValue();
		// println("control06 = " + control06);
	}

	if (theOscMessage.checkAddrPattern("/control07"))
	{
		control07 = theOscMessage.get(0).floatValue();
		// println("control07 = " + control07);
	}

	if (theOscMessage.checkAddrPattern("/control08"))
	{
		control08 = theOscMessage.get(0).floatValue();
		// println("control08 = " + control08);
	}
	*/

	// SINUSOIDAL PATH

	// pointCount
	// freqX
	// freqY
	// phi
	// xScalar
	// yScalar
	// randomOffset
	// lineWeight
	if (theOscMessage.checkAddrPattern("/pointCount"))
	{
		compositions[SINUSOIDAL_PATH].pointCount = theOscMessage.get(0).intValue();
		// compositions[SINUSOIDAL_PATH].initialize();
		compositionChanged = true;
		// println("pointCount = " + compositions[SINUSOIDAL_PATH].pointCount);
		// println("pointCount = " + theOscMessage.get(0).intValue());
	}

	if (theOscMessage.checkAddrPattern("/freqX"))
	{
		compositions[SINUSOIDAL_PATH].freqX = theOscMessage.get(0).floatValue();
		// println("freqX = " + compositions[SINUSOIDAL_PATH].freqX);
	}

	if (theOscMessage.checkAddrPattern("/freqY"))
	{
		compositions[SINUSOIDAL_PATH].freqY = theOscMessage.get(0).floatValue();
		// println("freqY = " + compositions[SINUSOIDAL_PATH].freqY);
	}
	
	if (theOscMessage.checkAddrPattern("/phi"))
	{
		compositions[SINUSOIDAL_PATH].phi = theOscMessage.get(0).floatValue();
		// println("phi = " + compositions[SINUSOIDAL_PATH].phi);
	}
	
	if (theOscMessage.checkAddrPattern("/xScalar"))
	{
		compositions[SINUSOIDAL_PATH].xScalar = theOscMessage.get(0).floatValue();
		// println("xScalar = " + compositions[SINUSOIDAL_PATH].xScalar);
	}

	if (theOscMessage.checkAddrPattern("/yScalar"))
	{
		compositions[SINUSOIDAL_PATH].yScalar = theOscMessage.get(0).floatValue();
		// println("yScalar = " + compositions[SINUSOIDAL_PATH].yScalar);
	}

	if (theOscMessage.checkAddrPattern("/randomOffset"))
	{
		compositions[SINUSOIDAL_PATH].randomOffset = theOscMessage.get(0).floatValue();
		// println("randomOffset = " + compositions[SINUSOIDAL_PATH].randomOffset);
	}
	
	if (theOscMessage.checkAddrPattern("/lineWeight"))
	{
		compositions[SINUSOIDAL_PATH].lineWeight = theOscMessage.get(0).floatValue();
		// println("lineWeight = " + compositions[SINUSOIDAL_PATH].lineWeight);
	}
}
// LissajousIdea002.pde

// to control via MIRA:
// pointCount
// freqX
// freqY
// phi
// xScalar
// yScalar
// randomOffset
// lineWeight

class SinusoidalPath extends Composition
{
	SinusoidalPath()
	{
		// maxPoints = 2000;
		pointCount = 200;
		// lissajousPoints = new PVector[maxPoints + 1];
		freqX = 4.32f;
		freqY = 1.023f;
		phi = 0;
		xScalar = 0.05f;
		yScalar = 0.15f;
		xMax = width * xScalar;
		yMax = height * yScalar;
		connectionRadius = width * 0.05f;
		connectionRamp = 6;
		randomOffset = 1;
		lineWeight = 1;

		for (int i = 0; i <= pointCount; i++)
		{
			lissajousPoints[i] = new PVector();
		}
	}

	public void initialize()
	{
		drawColor = color(0);
		drawAlpha = 150;
		backgroundColor = color(255);
		backgroundAlpha = 55;
		lissajousPoints = new PVector[maxPoints + 1];

		for (int i = 0; i <= pointCount; i++)
		{
			lissajousPoints[i] = new PVector();
		}

		background(backgroundColor);
	}

	public void update()
	{	
		xMax = width * xScalar;
		yMax = height * yScalar;
		for (int i = 0; i <= pointCount; i++)
		{
			angle = map(i, 0, pointCount, 0, TWO_PI);

			lissajousPoints[i].x = (width / pointCount) * i * 1.1f + sin(angle * freqX + phi) * xMax;
			// lissajousPoints[i].x = (width / pointCount) * i * 1.1;
			lissajousPoints[i].y = sin(angle * freqY) * yMax;
		}
	}

	public void display()
	{
		noStroke();
		fill(backgroundColor, backgroundAlpha);
		rect(0, 0, width, height);
		strokeWeight(lineWeight);
		stroke(drawColor);
		noFill();

		pushMatrix();
		translate(0, height / 2);

		for (int i = 0; i < pointCount; i++)
		{
			for (int j = 0; j < i; j++)
			{
				distance = PVector.dist(lissajousPoints[i], lissajousPoints[j]);
				alphaScalar = pow(1 / (distance / connectionRadius + 1), connectionRamp);
				
				if (distance <= connectionRadius)
				{
					lissajousPoints[i].x = lissajousPoints[i].x + random(-randomOffset, randomOffset);
					lissajousPoints[j].x = lissajousPoints[j].x + random(-randomOffset, randomOffset);
					lissajousPoints[i].y = lissajousPoints[i].y + random(-randomOffset, randomOffset);
					lissajousPoints[j].y = lissajousPoints[j].y + random(-randomOffset, randomOffset);
					stroke(drawColor, drawAlpha * alphaScalar);
					line(lissajousPoints[i].x,
						 lissajousPoints[i].y,
						 lissajousPoints[j].x,
						 lissajousPoints[j].y);
				}
			}
		}
		popMatrix();
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SuneVisuals" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
