PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//12842320/1476731/2.50/2/3/LED

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r95_95"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.95) (shapeHeight 0.95))
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
	(patternDef "LEDC1608X80N" (originalName "LEDC1608X80N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r95_95) (pt -0.75, 0) (rotation 90))
			(pad (padNum 2) (padStyleRef r95_95) (pt 0.75, 0) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.675 0.925) (pt 1.675 0.925) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.675 0.925) (pt 1.675 -0.925) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 1.675 -0.925) (pt -1.675 -0.925) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -1.675 -0.925) (pt -1.675 0.925) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.8 0.4) (pt 0.8 0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.8 0.4) (pt 0.8 -0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.8 -0.4) (pt -0.8 -0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.8 -0.4) (pt -0.8 0.4) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.8 0.133) (pt -0.533 0.4) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0.75 0.825) (pt -1.575 0.825) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.575 0.825) (pt -1.575 -0.825) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.575 -0.825) (pt 0.75 -0.825) (width 0.2))
		)
	)
	(symbolDef "150060VS75000" (originalName "150060VS75000")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 100 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 10 mils -35 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 600 mils 0 mils) (rotation 180) (pinLength 100 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 590 mils -35 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 200 mils -100 mils) (width 6 mils))
		(line (pt 250 mils 100 mils) (pt 150 mils 200 mils) (width 6 mils))
		(line (pt 350 mils 100 mils) (pt 250 mils 200 mils) (width 6 mils))
		(line (pt 100 mils 0 mils) (pt 200 mils 0 mils) (width 6 mils))
		(line (pt 400 mils 0 mils) (pt 500 mils 0 mils) (width 6 mils))
		(poly (pt 200 mils 0 mils) (pt 400 mils 100 mils) (pt 400 mils -100 mils) (pt 200 mils 0 mils) (width 10  mils))
		(poly (pt 210 mils 170 mils) (pt 180 mils 140 mils) (pt 150 mils 200 mils) (pt 210 mils 170 mils) (width 10  mils))
		(poly (pt 310 mils 170 mils) (pt 280 mils 140 mils) (pt 250 mils 200 mils) (pt 310 mils 170 mils) (width 10  mils))
		(attr "RefDes" "RefDes" (pt 500 mils 350 mils) (justify LowerLeft) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 500 mils 250 mils) (justify LowerLeft) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "150060VS75000" (originalName "150060VS75000") (compHeader (numPins 2) (numParts 1) (refDesPrefix LED)
		)
		(compPin "1" (pinName "K") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "A") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "150060VS75000"))
		(attachedPattern (patternNum 1) (patternName "LEDC1608X80N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Manufacturer_Name" "Wurth Elektronik")
		(attr "Manufacturer_Part_Number" "150060VS75000")
		(attr "Mouser Part Number" "710-150060VS75000")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Wurth-Elektronik/150060VS75000?qs=LlUlMxKIyB1Q1Bi5mQ%2FKLw%3D%3D")
		(attr "Arrow Part Number" "")
		(attr "Arrow Price/Stock" "")
		(attr "Description" "2.4 V Green LED 1608 (0603) SMD, Wurth Elektronik WL-SMCW 150060VS75000")
		(attr "<Hyperlink>" "https://componentsearchengine.com/Datasheets/2/150060VS75000.pdf")
		(attr "<Component Height>" "0.8")
		(attr "<STEP Filename>" "150060VS75000.stp")
		(attr "<STEP Offsets>" "X=-0.03;Y=0;Z=0.3")
		(attr "<STEP Rotation>" "X=90;Y=0;Z=0")
	)

)
