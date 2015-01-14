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

	if (theOscMessage.checkAddrPattern("/clearScreen"))
	{
		clearScreen = true;
	}

	if (theOscMessage.checkAddrPattern("/drawAlpha"))
	{
		compositions[currentComposition].drawAlpha = 
											theOscMessage.get(0).floatValue();
	}

	if (theOscMessage.checkAddrPattern("/backgroundAlpha"))
	{
		compositions[currentComposition].backgroundAlpha = 
											theOscMessage.get(0).floatValue();
	}

	if (theOscMessage.checkAddrPattern("/lineWeight"))
	{
		compositions[currentComposition].lineWeight = 
											theOscMessage.get(0).floatValue();
		// println("lineWeight = " + compositions[STRINGS].lineWeight);
	}

	if (theOscMessage.checkAddrPattern("/seed"))
	{
		compositions[currentComposition].seed();
	}

	if (theOscMessage.checkAddrPattern("/colorIndex_1"))
	{
		compositions[currentComposition].colorIndex_1 = 
											theOscMessage.get(0).intValue();
	}

	if (theOscMessage.checkAddrPattern("/colorIndex_2"))
	{
		compositions[currentComposition].colorIndex_2 = 
											theOscMessage.get(0).intValue();
	}

	if (theOscMessage.checkAddrPattern("/colorIndex_3"))
	{
		compositions[currentComposition].colorIndex_3 = 
											theOscMessage.get(0).intValue();
	}

	// NOISE_HAIR
	// controls: agentsCount, noiseScale, noiseStrength, speed

	if (theOscMessage.checkAddrPattern("/NoiseHair_agentsCount"))
	{
		compositions[NOISE_HAIR].agentsCount = theOscMessage.get(0).intValue();
	}

	if (theOscMessage.checkAddrPattern("/NoiseHair_noiseScale"))
	{
		compositions[NOISE_HAIR].noiseScale = theOscMessage.get(0).floatValue();
	}

	if (theOscMessage.checkAddrPattern("/NoiseHair_noiseStrength"))
	{
		compositions[NOISE_HAIR].noiseStrength = theOscMessage.get(0).floatValue();
	}

	if (theOscMessage.checkAddrPattern("/NoiseHair_speed"))
	{
		compositions[NOISE_HAIR].speed = theOscMessage.get(0).floatValue();
	}

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

	if (theOscMessage.checkAddrPattern("/phiStep_1"))
	{
		compositions[STRINGS].phiStep_1 = theOscMessage.get(0).floatValue();
	}

	if (theOscMessage.checkAddrPattern("/phiStep_2"))
	{
		compositions[STRINGS].phiStep_2 = theOscMessage.get(0).floatValue();
	}

	if (theOscMessage.checkAddrPattern("/phiStep_3"))
	{
		compositions[STRINGS].phiStep_3 = theOscMessage.get(0).floatValue();
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

	if (theOscMessage.checkAddrPattern("/FloatingRain_shape"))
	{
		compositions[FLOATING_RAIN].currentShape = 
				constrain(theOscMessage.get(0).intValue(), 
				0, compositions[FLOATING_RAIN].shapes.length - 1);
	}

	// ARC_CLUSTER

	// initialize()
	// getNew()
	// style
	// wrapStyle
	if (theOscMessage.checkAddrPattern("/ArcCluster_initialize"))
	{
		init = true;
	}

	if (theOscMessage.checkAddrPattern("/ArcCluster_getNew"))
	{
		compositions[ARC_CLUSTER].getNew = true;
	}

	if (theOscMessage.checkAddrPattern("/ArcCluster_changePath"))
	{
		if (theOscMessage.get(0).intValue() == 1)
		{
			compositions[ARC_CLUSTER].changePath = true;
		}

		else if (theOscMessage.get(0).intValue() == 0)
		{
			compositions[ARC_CLUSTER].changePath = false;
		}	
	}
// initialArrangement and drawStyle are not working atm
	if (theOscMessage.checkAddrPattern("/ArcCluster_initialArrangement"))
	{
		compositions[ARC_CLUSTER].initialArrangement = 
										theOscMessage.get(0).intValue();
	}

	if (theOscMessage.checkAddrPattern("/ArcCluster_drawStyle"))
	{
		compositions[ARC_CLUSTER].style = theOscMessage.get(0).intValue();
	}
}