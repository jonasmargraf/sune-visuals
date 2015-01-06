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

void setup()
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