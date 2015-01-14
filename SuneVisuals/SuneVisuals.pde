// TO DO:
// - dynamic color palette generation 
// (gradients, mix with half of all objects / agents / lines being white or black...)
// 
// - automatic controlSignal mapping
// 
// 

import oscP5.*;
import netP5.*;

boolean DEBUG = true;

OscP5 oscP5;
NetAddress myRemoteLocation;

Composition[] compositions;
int currentComposition;
boolean compositionChanged = true;
boolean init = true;
boolean clearScreen;

float[] controlSignals;
int currentController;
float currentControllerValue;

int NOISE_HAIR = 0;
int STRINGS = 1;
int FLOATING_RAIN = 2;
int ARC_CLUSTER = 3;

void setup()
{
	// OSC initialization
	oscP5 = new OscP5(this, 7777);
	// MaxForLive sends messages to to this address:
	myRemoteLocation = new NetAddress("127.0.0.1", 7778);

	// size(displayWidth, displayHeight, "processing.core.PGraphicsRetina2D", P2D);
	// size(1280, 720, OPENGL);
	size(displayWidth, displayHeight, OPENGL);
	smooth();
	background(0);

	compositions = new Composition[10];

	compositions[NOISE_HAIR] = new NoiseHair();
	compositions[STRINGS] = new Strings();
	compositions[FLOATING_RAIN] = new FloatingRain();
	compositions[ARC_CLUSTER] = new ArcCluster();
	// compositions[4] = new Idea05();
	// compositions[5] = new Idea06();
	// compositions[6] = new Idea07();
	// compositions[7] = new Idea08();
	// compositions[8] = new Idea09();
	// compositions[9] = new Idea10();

	currentComposition = FLOATING_RAIN;
}

boolean sketchFullScreen()
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

void draw()
{
	// frameRate(30);

	if (compositionChanged || init)
	{
		compositions[currentComposition].initialize();
		compositionChanged = false;
		init = false;
	}

	if (clearScreen)
		{
			background(compositions[currentComposition].backgroundColor);
			clearScreen = false;		
			println("screen cleared");
		}

	noStroke();
	fill(compositions[currentComposition].backgroundColor,
		 compositions[currentComposition].backgroundAlpha);
	rect(0, 0, width, height);

	compositions[currentComposition].update();
	compositions[currentComposition].display();

	if (DEBUG)
	{
		frame.setTitle(" " + frameRate);
	}

	// noLoop();
}

void keyPressed()
{
	// compositions[FLOATING_RAIN].currentShape++;
	// if (compositions[FLOATING_RAIN].currentShape >= compositions[FLOATING_RAIN].shapes.length)
	// {
	// 	compositions[FLOATING_RAIN].currentShape = 0;
	// }
	// compositions[FLOATING_RAIN].initialize();
	if (key == 's')
	{
		saveFrame("./frames/####.tif");
	}
}