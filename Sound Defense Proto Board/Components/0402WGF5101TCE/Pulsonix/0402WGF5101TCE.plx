PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//9179470/1476731/2.50/2/3/Resistor

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r75_60"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.6) (shapeHeight 0.75))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "RESC1005X40N" (originalName "RESC1005X40N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r75_60) (pt -0.55, 0) (rotation 90))
			(pad (padNum 2) (padStyleRef r75_60) (pt 0.55, 0) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.175 0.55) (pt 1.175 0.55) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.175 0.55) (pt 1.175 -0.55) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.175 -0.55) (pt -1.175 -0.55) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.175 -0.55) (pt -1.175 0.55) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.5 0.25) (pt 0.5 0.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.5 0.25) (pt 0.5 -0.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.5 -0.25) (pt -0.5 -0.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.5 -0.25) (pt -0.5 0.25) (width 0.025))
		)
	)
	(symbolDef "0402WGF5101TCE" (originalName "0402WGF5101TCE")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 0 mils -35 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 700 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 700 mils -35 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 50 mils) (pt 500 mils 50 mils) (width 6 mils))
		(line (pt 500 mils 50 mils) (pt 500 mils -50 mils) (width 6 mils))
		(line (pt 500 mils -50 mils) (pt 200 mils -50 mils) (width 6 mils))
		(line (pt 200 mils -50 mils) (pt 200 mils 50 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 550 mils 250 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 550 mils 150 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "0402WGF5101TCE" (originalName "0402WGF5101TCE") (compHeader (numPins 2) (numParts 1) (refDesPrefix R)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "0402WGF5101TCE"))
		(attachedPattern (patternNum 1) (patternName "RESC1005X40N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Manufacturer_Name" "UNI-ROYAL(Uniroyal Elec)")
		(attr "Manufacturer_Part_Number" "0402WGF5101TCE")
		(attr "Mouser Part Number" "")
		(attr "Mouser Price/Stock" "")
		(attr "Arrow Part Number" "")
		(attr "Arrow Price/Stock" "")
		(attr "Description" "Chip Resistor - Surface Mount 5.1KOhms +/-1% 1/16W 0402 RoHS")
		(attr "<Hyperlink>" "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF5101TCE_C25905.pdf")
		(attr "<Component Height>" "0.4")
		(attr "<STEP Filename>" "0402WGF5101TCE.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
