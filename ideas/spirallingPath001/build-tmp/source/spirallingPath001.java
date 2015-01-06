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

public class spirallingPath001 extends PApplet {

float x;
float y;
float xAngle;
float yAngle;
float xOffset;
float yOffset;
float xFrequency;
float yFrequency;
float angle;

PShape brush;

public void setup()
{
	size(displayWidth, displayHeight, OPENGL);
	background(0);
	smooth();

	x = width * 0.4f;
	y = height * 0.4f;
	xFrequency = 2.017f;
	yFrequency = 7.23f;
	xOffset = 1.04f;
	yOffset = 1.21f;

	brush = loadShape("02.svg");
	brush.disableStyle();
}

public void draw()
{
	// background(255);
	// translate(width / 2, height /2);

	x += sin(xAngle) * xOffset * xFrequency;
	// x += noise(xOffset) * -1;
	y += cos(yAngle) * yOffset * yFrequency;

	if (x < 0) x = width;
	if (x > width) x = 0;
	if (y < 0) y = height;
	if (y > height) y = 0;

	// noStroke();
	// ellipse(x, y, 10, 10);

	pushMatrix();
	translate(x, y);
	rotate(xAngle + PI);
	// fill(255, 0, 55, 50);
	fill(255);
	stroke(255, 0, random(55));
	strokeWeight(2);
	shape(brush, 0, 0, 50, (yAngle * 100) % 300);
	popMatrix();

	xAngle += random(0.01f);
	yAngle += random(0.15f);
	xFrequency += random(-0.15f, 0.15f);
	yFrequency += random(-0.415f, 0.415f);
	// xOffset += 0.01;
	// yOffset += 0.03;
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "spirallingPath001" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
