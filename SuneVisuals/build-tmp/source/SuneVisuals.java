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




OscP5 oscP5;
NetAddress myRemoteLocation;

Composition[] compositions;
int currentComposition;

String s;

boolean debug = false;

public void setup()
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

public boolean sketchFullScreen()
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

public void draw()
{
	compositions[currentComposition].update();
	compositions[currentComposition].display();

	if (debug)
	{
		frame.setTitle(" " + frameRate);
	}
}
class Composition
{

	int x;
	int y;
	int backgroundColor;
	int drawColor;

	public void update()
	{		
	}

	public void display()
	{
	}
}

class Idea01 extends Composition
{
	public void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(255, 91, 154);
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
		text("Idea01", 0, 0);
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

public void oscEvent(OscMessage theOscMessage)
{

	if (theOscMessage.checkAddrPattern("/quit"))
	{
		exit();
	}

	s = theOscMessage.toString();
	println("In oscEvent(), s = %s", s);

	if (theOscMessage.checkAddrPattern("/composition"))
	{
		currentComposition = constrain(theOscMessage.get(0).intValue(),
										0,
										(compositions.length - 1));
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
