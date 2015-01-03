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

public class dumbAgent_restrictedRandom001 extends PApplet {

// dumb agent moves randomly across canvas
// agent's direction is limited to either:
// NORTH, NORTHEAST, EAST, SOUTHEAST, SOUTH, SOUTHWEST, WEST, NORTHWEST

int NORTH = 0;
int NORTHEAST = 1; 
int EAST = 2;
int SOUTHEAST = 3;
int SOUTH = 4;
int SOUTHWEST = 5;
int WEST = 6;
int NORTHWEST= 7;

float stepSize = 10;
float deviation = 15;
float diameter = 10;

int direction;
float x, y;

public void setup() {
	size(displayWidth, displayHeight, OPENGL);
	smooth();
	noFill();
	stroke(0, 100);
	background(255);

	x = width / 2;
	y = height / 2;
}

public void draw() {

	diameter = random(5, 25);
	strokeWeight(diameter / 4);

	if (direction == NORTH)
	{
		x += random(-deviation, deviation);		
		y -= stepSize;
	}
	if (direction == NORTHEAST)
	{
		x += stepSize + random(-deviation, deviation);
		y -= stepSize + random(-deviation, deviation);
	}
	if (direction == EAST)
	{
		x += stepSize;
		y += random(-deviation, deviation);		
	}
	if (direction == SOUTHEAST)
	{
		x += stepSize + random(-deviation, deviation);
		y += stepSize + random(-deviation, deviation);
	}
	if (direction == SOUTH)
	{
		x += random(-deviation, deviation);		
		y += stepSize;
	}
	if (direction == SOUTHWEST)
	{
		x -= stepSize + random(-deviation, deviation);
		y += stepSize + random(-deviation, deviation);
	}
	if (direction == WEST)
	{
		x -= stepSize;
		y += random(-deviation, deviation);		
	}
	if (direction == NORTHWEST)
	{
		x -= stepSize + random(-deviation, deviation);
		y -= stepSize + random(-deviation, deviation);
	}

	if (x > width) x = 0;
	if (x < 0) x = width;
	if (y > height) y = 0;
	if (y < 0) y = height;

	ellipse(x, y, diameter, diameter);
}

public void keyPressed()
{
	if (key == DELETE || key == BACKSPACE)
	{
		background(255);
	}

	if (key == ' ')
	{
		direction = PApplet.parseInt(random(0, 8));
	}
		
	if (key == '1')
	{
		direction = NORTH;
	}
	if (key == '2')
	{
		direction = NORTHEAST;
	}
	if (key == '3')
	{
		direction = EAST;
	}
	if (key == '4')
	{
		direction = SOUTHEAST;
	}
	if (key == '5')
	{
		direction = SOUTH;
	}
	if (key == '6')
	{
		direction = SOUTHWEST;
	}
	if (key == '7')
	{
		direction = WEST;
	}
	if (key == '8')
	{
		direction = NORTHWEST;
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "dumbAgent_restrictedRandom001" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
