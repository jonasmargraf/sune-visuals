void oscEvent(OscMessage theOscMessage)
{

	println("Incoming OSC Message: " +  theOscMessage);

	if (theOscMessage.checkAddrPattern("/quit"))
	{
		exit();
	}

	if (theOscMessage.checkAddrPattern("/composition"))
	{
		currentComposition = constrain(theOscMessage.get(0).intValue(),
										0,
										(compositions.length - 1));
	}

	if (theOscMessage.checkAddrPattern("/seed"))
	{
		compositions[currentComposition].seed();
	}

	if (theOscMessage.checkAddrPattern("/controlSignal"))
	{
		int currentController = theOscMessage.get(0).intValue();
		float currentControllerValue = theOscMessage.get(1).floatValue();
		controlSignals[currentController] = currentControllerValue;

		println("theOscMessage.get(0).intValue() = " + theOscMessage.get(0).intValue());
		println("theOscMessage.get(1).floatValue() = " + theOscMessage.get(1).floatValue());
		println(controlSignals[currentController]);

		// TO DO: send this controller array only to currently active composition,
		// then map it to parameters there.
	}

	/*

	if (theOscMessage.checkAddrPattern("/control01"))
	{
		control01 = theOscMessage.get(0).floatValue();
		// println("control01 = " + control01);
	}

	if (theOscMessage.checkAddrPattern("/control02"))
	{
		control02 = theOscMessage.get(0).floatValue();
		// println("control02 = " + control02);
	}

	if (theOscMessage.checkAddrPattern("/control03"))
	{
		control03 = theOscMessage.get(0).floatValue();
		// println("control03 = " + control03);
	}

	if (theOscMessage.checkAddrPattern("/control04"))
	{
		control04 = theOscMessage.get(0).floatValue();
		// println("control04 = " + control04);
	}

	if (theOscMessage.checkAddrPattern("/control05"))
	{
		control05 = theOscMessage.get(0).floatValue();
		// println("control05 = " + control05);
	}

	if (theOscMessage.checkAddrPattern("/control06"))
	{
		control06 = theOscMessage.get(0).floatValue();
		// println("control06 = " + control06);
	}

	if (theOscMessage.checkAddrPattern("/control07"))
	{
		control07 = theOscMessage.get(0).floatValue();
		// println("control07 = " + control07);
	}

	if (theOscMessage.checkAddrPattern("/control08"))
	{
		control08 = theOscMessage.get(0).floatValue();
		// println("control08 = " + control08);
	}
	*/
}