void oscEvent(OscMessage theOscMessage)
{

	println("Incoming OSC Message: " +  theOscMessage);

	if (theOscMessage.checkAddrPattern("/quit"))
	{
		exit();
	}

	if (theOscMessage.checkAddrPattern("/composition"))
	{
		if (currentComposition != theOscMessage.get(0).intValue())
		{
			currentComposition = constrain(theOscMessage.get(0).intValue(),
											0,
											(compositions.length - 1));
			compositionChanged = true;							
		}

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

	// STRINGS

	// pointCount
	// freqX
	// freqY
	// phi
	// xScalar
	// yScalar
	// randomOffset
	// lineWeight
	if (theOscMessage.checkAddrPattern("/pointCount"))
	{
		compositions[STRINGS].pointCount = theOscMessage.get(0).intValue();
		// compositions[STRINGS].initialize();
		compositionChanged = true;
		println("pointCount = " + compositions[STRINGS].pointCount);
		// println("pointCount = " + theOscMessage.get(0).intValue());
	}

	if (theOscMessage.checkAddrPattern("/freqX_1"))
	{
		compositions[STRINGS].xFrequencies[0] = theOscMessage.get(0).floatValue();
		// println("xFrequencies[0] = " + compositions[STRINGS].xFrequencies[0]);
	}

	if (theOscMessage.checkAddrPattern("/freqX_2"))
	{
		compositions[STRINGS].xFrequencies[1] = theOscMessage.get(0).floatValue();
		// println("xFrequencies[1] = " + compositions[STRINGS].xFrequencies[1]);
	}

	if (theOscMessage.checkAddrPattern("/freqX_3"))
	{
		compositions[STRINGS].xFrequencies[2] = theOscMessage.get(0).floatValue();
		// println("xFrequencies[2] = " + compositions[STRINGS].xFrequencies[2]);
	}

	if (theOscMessage.checkAddrPattern("/freqY_1"))
	{
		compositions[STRINGS].yFrequencies[0] = theOscMessage.get(0).floatValue();
		// println("yFrequencies[0] = " + compositions[STRINGS].yFrequencies[0]);
	}

	if (theOscMessage.checkAddrPattern("/freqY_2"))
	{
		compositions[STRINGS].yFrequencies[1] = theOscMessage.get(0).floatValue();
		// println("yFrequencies[1] = " + compositions[STRINGS].yFrequencies[1]);
	}

	if (theOscMessage.checkAddrPattern("/freqY_3"))
	{
		compositions[STRINGS].yFrequencies[2] = theOscMessage.get(0).floatValue();
		// println("yFrequencies[2] = " + compositions[STRINGS].yFrequencies[2]);
	}

	if (theOscMessage.checkAddrPattern("/phi"))
	{
		compositions[STRINGS].phi = theOscMessage.get(0).floatValue();
		// println("phi = " + compositions[STRINGS].phi);
	}
	
	if (theOscMessage.checkAddrPattern("/xScalar"))
	{
		compositions[STRINGS].xScalar = theOscMessage.get(0).floatValue();
		// println("xScalar = " + compositions[STRINGS].xScalar);
	}

	if (theOscMessage.checkAddrPattern("/yScalar"))
	{
		compositions[STRINGS].yScalar = theOscMessage.get(0).floatValue();
		// println("yScalar = " + compositions[STRINGS].yScalar);
	}

	if (theOscMessage.checkAddrPattern("/randomOffset"))
	{
		compositions[STRINGS].randomOffset = theOscMessage.get(0).floatValue();
		// println("randomOffset = " + compositions[STRINGS].randomOffset);
	}
	
	if (theOscMessage.checkAddrPattern("/lineWeight"))
	{
		compositions[STRINGS].lineWeight = theOscMessage.get(0).floatValue();
		// println("lineWeight = " + compositions[STRINGS].lineWeight);
	}

	// FLOATING_RAIN

	// // MIRA control:
	// initialize()
	// direction
	// nAgents
	// speed
	// deviation
	// diameter
	// strokeWeight
	// fill
	// stroke
	if (theOscMessage.checkAddrPattern("/FloatingRain_initialize"))
	{
		init = true;
	}

	if (theOscMessage.checkAddrPattern("/FloatingRain_direction"))
	{

		compositions[FLOATING_RAIN].theDirection = 
				constrain(theOscMessage.get(0).intValue(), 0, 7);
	}

	if (theOscMessage.checkAddrPattern("/FloatingRain_nAgents"))
	{
		compositions[FLOATING_RAIN].nAgents = 
				constrain(theOscMessage.get(0).intValue(), 1, 800);
	}

	if (theOscMessage.checkAddrPattern("/FloatingRain_speed"))
	{
		compositions[FLOATING_RAIN].speed = 
				constrain(theOscMessage.get(0).floatValue(), 0, 5);
	}

	if (theOscMessage.checkAddrPattern("/FloatingRain_size"))
	{
		compositions[FLOATING_RAIN].theSize = 
				constrain(theOscMessage.get(0).floatValue(), 0.1, 4);
	}
}