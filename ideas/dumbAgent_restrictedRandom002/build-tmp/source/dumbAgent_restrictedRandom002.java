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

public class dumbAgent_restrictedRandom002 extends PApplet {

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

float theSpeed = 5;
float theDeviation = 15;
// float diameter = 10;

int theDirection;
float theX, theY;

Agent[] agents;
int nAgents;

public void setup() {
	size(displayWidth, displayHeight, OPENGL);
	smooth();
	noFill();
	stroke(0, 100);
	background(255);

	theDirection = EAST;

	nAgents = 200;
	agents = new Agent[nAgents];

	if (theDirection == EAST || theDirection == WEST)
	{
		theX = width / 2;
		for (int i = 0; i < nAgents; i++)
		{
			theY = (PApplet.parseFloat(height) / nAgents) * i;
			theSpeed = 5 + random(15);
			theDeviation = 2 + random(15);

			agents[i] = new Agent(theX,
								  theY,
								  theDirection,
								  theSpeed,
								  theDeviation);
		}	
	}

	else
	{
		theY = height / 2;
		for (int i = 0; i < nAgents; i++)
		{
			theX = (PApplet.parseFloat(width) / nAgents) * i;
			theSpeed = 5 + random(15);
			theDeviation = 2 + random(15);

			agents[i] = new Agent(theX,
								  theY,
								  theDirection,
								  theSpeed,
								  theDeviation);
		}
	}		
}

public void draw() {
	noStroke();
	fill(0, 40);
	rect(0, 0, width, height);

	for (int i = 0; i < nAgents; i++)
	{
		agents[i].update();
		agents[i].display();
	}

	frame.setTitle("" + frameRate);
}

public void keyPressed()
{
	if (key == DELETE || key == BACKSPACE)
	{
		background(255);
	}

	if (key == ' ')
	{
		theDirection = PApplet.parseInt(random(0, 8));
	}
}

class Agent
{
	PVector position;
	PVector direction;

	int theDirection;
	float speed;
	float diameter = 10;
	float deviation;

	Agent(float x, float y, int _theDirection, float _speed, float _deviation)
	{
		position = new PVector(x, y);
		direction = new PVector();
		theDirection = _theDirection;
		speed = _speed;
		deviation = _deviation;
	}

	public void update()
	{
		diameter = random(2, 80);
		// diameter = random(2, 15);

		if (theDirection == NORTH)
		{
			direction.x = random(-deviation, deviation);		
			direction.y = -speed;
		}
		if (theDirection == NORTHEAST)
		{
			direction.x = speed + random(-deviation, deviation);
			direction.y = -(speed + random(-deviation, deviation));
		}
		if (theDirection == EAST)
		{
			direction.x = speed;
			direction.y = random(-deviation, deviation);		
		}
		if (theDirection == SOUTHEAST)
		{
			direction.x = speed + random(-deviation, deviation);
			direction.y = speed + random(-deviation, deviation);
		}
		if (theDirection == SOUTH)
		{
			direction.x = random(-deviation, deviation);		
			direction.y = speed;
		}
		if (theDirection == SOUTHWEST)
		{
			direction.x = -(speed + random(-deviation, deviation));
			direction.y = speed + random(-deviation, deviation);
		}
		if (theDirection == WEST)
		{
			direction.x = -speed;
			direction.y = random(-deviation, deviation);		
		}
		if (theDirection == NORTHWEST)
		{
			direction.x = -(speed + random(-deviation, deviation));
			direction.y = -(speed + random(-deviation, deviation));
		}

		if (position.x > width) position.x = 0;
		if (position.x < 0) position.x = width;
		if (position.y > height) position.y = 0;
		if (position.y < 0) position.y = height;

		position.add(direction);
	}

	public void display()
	{
		noFill();
		stroke (0, 125, 255, 100);
		strokeWeight(diameter * 0.15f);
		ellipse(position.x, position.y, diameter, diameter);
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "dumbAgent_restrictedRandom002" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
