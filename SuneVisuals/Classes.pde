class Composition
{

	int x;
	int y;
	int nSeed = int(random(1000));
	int rSeed = int(random(1000));
	color backgroundColor;
	color backgroundAlpha;
	color drawColor;
	color drawAlpha;

	void update()
	{		
	}

	void display()
	{
	}

	void seed()
	{
		nSeed = int(random(1000));
		rSeed = int(random(1000));
		println("nSeed = " + nSeed + "    |    " + "rSeed = " + rSeed);
	}
}

class Idea02 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(65, 220, 255);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea02", 0, 0);
	}
}

class Idea03 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(204, 188, 32);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea03", 0, 0);
	}
}

class Idea04 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(56,255, 167);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea04", 0, 0);
	}
}

class Idea05 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(103, 86, 255);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea05", 0, 0);
	}	
}

class Idea06 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(204, 74, 14);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea06", 0, 0);
	}	
}

class Idea07 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(204, 14, 169);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea07", 0, 0);
	}	
}

class Idea08 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(255, 226, 91);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea08", 0, 0);
	}	
}

class Idea09 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(116, 255, 249);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea09", 0, 0);
	}	
}

class Idea10 extends Composition
{
	void update()
	{	
		x = 0;
		y = 0;
		backgroundColor = color(255);
		drawColor = color(255, 181, 91);
	}

	void display()
	{
		background(backgroundColor);
		translate(width / 2, height / 2);
		noStroke();
		fill(drawColor);
		ellipse(x, y, 0.5 * width, 0.5 * width);
		fill(255);
		textAlign(CENTER, CENTER);
		textSize(30);
		text("Idea10", 0, 0);
	}	
}

