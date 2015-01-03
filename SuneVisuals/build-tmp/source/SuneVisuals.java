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




public final boolean DEBUG = false;

OscP5 oscP5;
NetAddress myRemoteLocation;

Composition[] compositions;
int currentComposition;

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
	compositions[0] = new Idea01();
	compositions[1] = new Idea02();
	compositions[2] = new Idea03();
	compositions[3] = new Idea04();
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
	compositions[currentComposition].update();
	compositions[currentComposition].display();

	if (DEBUG)
	{
		frame.setTitle(" " + frameRate);
	}
}
class Composition
{

	int x;
	int y;
	int nSeed = PApplet.parseInt(random(1000));
	int rSeed = PApplet.parseInt(random(1000));
	int backgroundColor;
	int backgroundAlpha;
	int drawColor;
	int drawAlpha;

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

class Idea02 extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(65, 220, 255);
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
		text("Idea02", 0, 0);
	}
}

class Idea03 extends Composition
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

class Idea04 extends Composition
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

class Idea01 extends Composition
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

	Idea01()
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

	println("Incoming OSC Message: " +  theOscMessage);

	if (theOscMessage.checkAddrPattern("/quit"))
	{
		exit();
	}

	if (theOscMessage.checkAddrPattern("/composition"))
	{
		currentComposition = constrain(theOscMessage.get(0).intValue(),
										0,
										(compositions.length - 1));
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
