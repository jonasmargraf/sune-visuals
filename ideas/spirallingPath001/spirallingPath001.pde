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

void setup() {
	size(displayWidth, displayHeight, OPENGL);
	background(0);
	smooth();

	x = width * 0.4;
	y = height * 0.4;
	xFrequency = 2.017;
	yFrequency = 7.23;
	xOffset = 1.04;
	yOffset = 1.21;

	brush = loadShape("02.svg");
	brush.disableStyle();
}

void draw() {
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

	xAngle += random(0.01);
	yAngle += random(0.15);
	xFrequency += random(-0.15, 0.15);
	yFrequency += random(-0.415, 0.415);
	// xOffset += 0.01;
	// yOffset += 0.03;
}