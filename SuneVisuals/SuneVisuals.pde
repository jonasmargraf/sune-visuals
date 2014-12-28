import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

Composition[] compositions;
int currentComposition;

String s;

boolean debug = false;

void setup()
{
	// OSC initialization
	oscP5 = new OscP5(this, 7777);
	// MaxForLive sends messages to to this address:
	myRemoteLocation = new NetAddress("127.0.0.1", 7778);

	// size(displayWidth, displayHeight, "processing.core.PGraphicsRetina2D", P2D);
	size(displayWidth, displayHeight, P2D);
	smooth();
	background(0);

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

boolean sketchFullScreen()
{
	// use window mode, display fps on top
	if (debug)
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
	compositions[currentComposition].update();
	compositions[currentComposition].display();

	if (debug)
	{
		frame.setTitle(" " + frameRate);
	}
}