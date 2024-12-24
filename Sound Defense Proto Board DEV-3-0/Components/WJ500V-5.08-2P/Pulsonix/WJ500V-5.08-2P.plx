PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//7642158/1476731/2.50/2/3/Connector

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c180_h120"
		(holeDiam 1.2)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.800) (shapeHeight 1.800))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.800) (shapeHeight 1.800))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "WJ500V5082P" (originalName "WJ500V5082P")
		(multiLayer
			(pad (padNum 1) (padStyleRef c180_h120) (pt 0.000, 0.000) (rotation 90))
			(pad (padNum 2) (padStyleRef c180_h120) (pt 5.080, 0.000) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 2.840, 0.500) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.64 5.5) (pt 8.32 5.5) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 8.32 5.5) (pt 8.32 -4.5) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 8.32 -4.5) (pt -2.64 -4.5) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.64 -4.5) (pt -2.64 5.5) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.64 5.5) (pt 8.32 5.5) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 8.32 5.5) (pt 8.32 -4.5) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 8.32 -4.5) (pt -2.64 -4.5) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.64 -4.5) (pt -2.64 5.5) (width 0.2))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -3.64 6.5) (pt 9.32 6.5) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 9.32 6.5) (pt 9.32 -5.5) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 9.32 -5.5) (pt -3.64 -5.5) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -3.64 -5.5) (pt -3.64 6.5) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.2 -0.2) (pt -3.2 -0.2) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.15, -0.2) (radius 0.05) (startAngle 180.0) (sweepAngle 180.0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.1 -0.2) (pt -3.1 -0.2) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.15, -0.2) (radius 0.05) (startAngle .0) (sweepAngle 180.0) (width 0.1))
		)
	)
	(symbolDef "WJ500V-5.08-2P" (originalName "WJ500V-5.08-2P")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 600 mils 100 mils) (width 6 mils))
		(line (pt 600 mils 100 mils) (pt 600 mils -200 mils) (width 6 mils))
		(line (pt 600 mils -200 mils) (pt 200 mils -200 mils) (width 6 mils))
		(line (pt 200 mils -200 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 650 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 650 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "WJ500V-5.08-2P" (originalName "WJ500V-5.08-2P") (compHeader (numPins 2) (numParts 1) (refDesPrefix J)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "WJ500V-5.08-2P"))
		(attachedPattern (patternNum 1) (patternName "WJ500V5082P")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Manufacturer_Name" "Ningbo Kangnex")
		(attr "Manufacturer_Part_Number" "WJ500V-5.08-2P")
		(attr "Mouser Part Number" "")
		(attr "Mouser Price/Stock" "")
		(attr "Arrow Part Number" "")
		(attr "Arrow Price/Stock" "")
		(attr "Description" "P=5.08mm Screw terminal")
		(attr "<Hyperlink>" "https://datasheet.lcsc.com/szlcsc/1912251636_Ningbo-Kangnex-Elec-WJ500V-5-08-2P_C8465.pdf")
		(attr "<Component Height>" "14.2")
		(attr "<STEP Filename>" "WJ500V-5.08-2P.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
