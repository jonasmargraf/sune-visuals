// TO DO:
// - dynamic color palette generation 
// (gradients, mix with half of all objects / agents / lines being white or black...)

import oscP5.*;
import netP5.*;

boolean DEBUG = false;

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

// int ASYM = 0;
// int CIRCROSS = 1;
// int CORNER = 2;
// int CROSS = 3;
// int DIAMOND = 4;
// int EX = 5;
// int EX_SMALL = 6;
// int EX_THIN = 7;
// int HALM = 8;
// int KEGEL = 9;
// int KINKS = 10;
// int KREISE = 11;
// int PARALLEL = 12;
// int STERN = 13;

// int currentShape;
// PShape[] shapes = new PShape[14];

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

	// shapes[ASYM] = loadShape("asym.svg");
	// shapes[CIRCROSS] = loadShape("circross.svg");
	// shapes[CORNER] = loadShape("corner.svg");
	// shapes[CROSS] = loadShape("cross.svg");
	// shapes[DIAMOND] = loadShape("diamond.svg");
	// shapes[EX] = loadShape("ex.svg");
	// shapes[EX_SMALL] = loadShape("ex_small.svg");
	// shapes[EX_THIN] = loadShape("ex_thin.svg");
	// shapes[HALM] = loadShape("halm.svg");
	// shapes[KEGEL] = loadShape("kegel.svg");
	// shapes[KINKS] = loadShape("kinks.svg");
	// shapes[KREISE] = loadShape("kreise.svg");
	// shapes[PARALLEL] = loadShape("parallel.svg");
	// shapes[STERN] = loadShape("stern.svg");

	// for (int i = 0; i < 14; i++)
	// {
	// 	shapes[i].disableStyle();
	// }

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
	frameRate(30);

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