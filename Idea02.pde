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