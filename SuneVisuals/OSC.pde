void oscEvent(OscMessage theOscMessage)
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