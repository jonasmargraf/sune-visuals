class Composition
{
	float x;
	float y;
	int nSeed = int(random(1000));
	int rSeed = int(random(1000));
	color backgroundColor;
	float backgroundAlpha;
	color drawColor;
	color drawColor_1;
	color drawColor_2;
	color drawColor_3;
	float drawAlpha;
	float lineWeight;
	float speed;

	int WHITE = 0;
	int BLACK = 1;
	int ROSA = 2;
	int DARK_PINK = 3;
	int MAGENTA = 4;
	int FLIEDER = 5;
	int TURQUOISE = 6;
	int NAVY = 7;
	int OLIVE = 8;
	int YELLOW = 9;

	int colorIndex_1;
	int colorIndex_2;
	int colorIndex_3;

	// color[] palette = new color[10];
	// // palette = new color[10];
	// palette[WHITE] = new color(255);
	// palette[BLACK] = new color(0);
	// palette[ROSA] = new color(255, 127, 140);
	// palette[DARK_PINK] = new color(#F7008F);
	// palette[MAGENTA] = new color(#F700BC);
	// palette[FLIEDER] = new color(#EC86FF);
	// palette[TURQUOISE] = new color(#35CCAE);
	// palette[NAVY] = new color(#0D3C74);
	// palette[OLIVE] = new color(#759983);
	// palette[YELLOW] = new color(#FFF100);

	color[] palette = {
						// WHITE
						#FFFFFF,
						// BLACK
						#000000,
						// ROSA
						#FF7F8C,
						// DARK_PINK
						#F7008F,
						// MAGENTA
						#940825,
						// FLIEDER
						#EC86FF,
						// TURQUOISE
						#35CCAE,
						// NAVY
						#0D3C74,
						// OLIVE
						#759983,
						// YELLOW
						#FFF100
					};

	// NOISE_HAIR
	color agentColor;
	int agentsCount;
	float noiseScale;
	float noiseStrength;

	// STRINGS
	int pathsCount;
	int maxPoints = 150;
	int pointCount;
	float[] xFrequencies = {4.23,	78.423,	3.023};
	float[] yFrequencies = {13.103,	17.0,	2.43};
	float freqX;
	float freqY;
	// float phi;
	float phiStep_1;
	float phiStep_2;
	float phiStep_3;
	float angle;
	float xMax;
	float yMax;
	float xScalar;
	float yScalar;
	float yOffset_1;
	float yOffset_2;
	float yOffset_3;
	float distance;
	float connectionRadius;
	float connectionRamp;
	float randomOffset;
	float alphaScalar;

	// FLOATING_RAIN
	int NORTH = 0;
	int NORTHEAST = 1; 
	int EAST = 2;
	int SOUTHEAST = 3;
	int SOUTH = 4;
	int SOUTHWEST = 5;
	int WEST = 6;
	int NORTHWEST= 7;
	int maxAgents = 800;
	int nAgents;
	// float theSpeed = 5;
	float theStepSize;
	float initialSpeed = 2;
	// float speed = 1;
	float speedDeviation = 5;
	float theDeviation = 15;
	int theDirection;
	float theSize = 1;
	float theMaxDiameter;
	float theX, theY;

	int ASYM = 0;
	int CIRCROSS = 1;
	int CORNER = 2;
	int CROSS = 3;
	int DIAMOND = 4;
	int EX = 5;
	int EX_SMALL = 6;
	int EX_THIN = 7;
	int HALM = 8;
	int KEGEL = 9;
	int KINKS = 10;
	int KREISE = 11;
	int PARALLEL = 12;
	int STERN = 13;

	int currentShape;
	PShape[] shapes = new PShape[14];

	// ARC_CLUSTER
	int seed;
	int initialArrangement;
	int style;
	int wrapStyle;
	// int x;
	// int y;
	int nArcStructures;
	boolean getNew;
	boolean changePath;

	void initialize()
	{
	}

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

/*
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
*/
