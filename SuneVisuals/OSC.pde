void oscEvent(OscMessage theOscMessage)
{

	// println("Incoming OSC Message: " +  theOscMessage);

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

	// SINUSOIDAL PATHS

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
		compositions[SINUSOIDAL_PATHS].pointCount = theOscMessage.get(0).intValue();
		// compositions[SINUSOIDAL_PATHS].initialize();
		compositionChanged = true;
		println("pointCount = " + compositions[SINUSOIDAL_PATHS].pointCount);
		// println("pointCount = " + theOscMessage.get(0).intValue());
	}

	if (theOscMessage.checkAddrPattern("/freqX_1"))
	{
		compositions[SINUSOIDAL_PATHS].xFrequencies[0] = theOscMessage.get(0).floatValue();
		// println("xFrequencies[0] = " + compositions[SINUSOIDAL_PATHS].xFrequencies[0]);
	}

	if (theOscMessage.checkAddrPattern("/freqX_2"))
	{
		compositions[SINUSOIDAL_PATHS].xFrequencies[1] = theOscMessage.get(0).floatValue();
		// println("xFrequencies[1] = " + compositions[SINUSOIDAL_PATHS].xFrequencies[1]);
	}

	if (theOscMessage.checkAddrPattern("/freqX_3"))
	{
		compositions[SINUSOIDAL_PATHS].xFrequencies[2] = theOscMessage.get(0).floatValue();
		// println("xFrequencies[2] = " + compositions[SINUSOIDAL_PATHS].xFrequencies[2]);
	}

	if (theOscMessage.checkAddrPattern("/freqY_1"))
	{
		compositions[SINUSOIDAL_PATHS].yFrequencies[0] = theOscMessage.get(0).floatValue();
		// println("yFrequencies[0] = " + compositions[SINUSOIDAL_PATHS].yFrequencies[0]);
	}

	if (theOscMessage.checkAddrPattern("/freqY_2"))
	{
		compositions[SINUSOIDAL_PATHS].yFrequencies[1] = theOscMessage.get(0).floatValue();
		// println("yFrequencies[1] = " + compositions[SINUSOIDAL_PATHS].yFrequencies[1]);
	}

	if (theOscMessage.checkAddrPattern("/freqY_3"))
	{
		compositions[SINUSOIDAL_PATHS].yFrequencies[2] = theOscMessage.get(0).floatValue();
		// println("yFrequencies[2] = " + compositions[SINUSOIDAL_PATHS].yFrequencies[2]);
	}
	
	if (theOscMessage.checkAddrPattern("/phi"))
	{
		compositions[SINUSOIDAL_PATHS].phi = theOscMessage.get(0).floatValue();
		// println("phi = " + compositions[SINUSOIDAL_PATHS].phi);
	}
	
	if (theOscMessage.checkAddrPattern("/xScalar"))
	{
		compositions[SINUSOIDAL_PATHS].xScalar = theOscMessage.get(0).floatValue();
		// println("xScalar = " + compositions[SINUSOIDAL_PATHS].xScalar);
	}

	if (theOscMessage.checkAddrPattern("/yScalar"))
	{
		compositions[SINUSOIDAL_PATHS].yScalar = theOscMessage.get(0).floatValue();
		// println("yScalar = " + compositions[SINUSOIDAL_PATHS].yScalar);
	}

	if (theOscMessage.checkAddrPattern("/randomOffset"))
	{
		compositions[SINUSOIDAL_PATHS].randomOffset = theOscMessage.get(0).floatValue();
		// println("randomOffset = " + compositions[SINUSOIDAL_PATHS].randomOffset);
	}
	
	if (theOscMessage.checkAddrPattern("/lineWeight"))
	{
		compositions[SINUSOIDAL_PATHS].lineWeight = theOscMessage.get(0).floatValue();
		// println("lineWeight = " + compositions[SINUSOIDAL_PATHS].lineWeight);
	}
}