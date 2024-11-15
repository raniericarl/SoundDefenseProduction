SamacSys ECAD Model
990513/1476731/2.50/2/3/Inductor

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r185_115"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.15) (shapeHeight 1.85))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "INDC2016X95N" (originalName "INDC2016X95N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r185_115) (pt -0.9, 0) (rotation 0))
			(pad (padNum 2) (padStyleRef r185_115) (pt 0.9, 0) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 30)
			(line (pt -1.725 1.2) (pt 1.725 1.2) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 1.725 1.2) (pt 1.725 -1.2) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 1.725 -1.2) (pt -1.725 -1.2) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt -1.725 -1.2) (pt -1.725 1.2) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.025 0.825) (pt 1.025 0.825) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.025 0.825) (pt 1.025 -0.825) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.025 -0.825) (pt -1.025 -0.825) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.025 -0.825) (pt -1.025 0.825) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0 0.725) (pt 0 -0.725) (width 0.2))
		)
	)
	(symbolDef "SRN2009T-R47M" (originalName "SRN2009T-R47M")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 0 mils -35 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 800 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 800 mils -35 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Default"))
		))
		(arc (pt 250 mils -2 mils) (radius 50 mils) (startAngle 177.7) (sweepAngle -175.4) (width 6 mils))
		(arc (pt 350 mils -2 mils) (radius 50 mils) (startAngle 177.7) (sweepAngle -175.4) (width 6 mils))
		(arc (pt 450 mils -2 mils) (radius 50 mils) (startAngle 177.7) (sweepAngle -175.4) (width 6 mils))
		(arc (pt 550 mils -2 mils) (radius 50 mils) (startAngle 177.7) (sweepAngle -175.4) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 650 mils 250 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "SRN2009T-R47M" (originalName "SRN2009T-R47M") (compHeader (numPins 2) (numParts 1) (refDesPrefix L)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "SRN2009T-R47M"))
		(attachedPattern (patternNum 1) (patternName "INDC2016X95N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Manufacturer_Name" "Bourns")
		(attr "Manufacturer_Part_Number" "SRN2009T-R47M")
		(attr "Mouser Part Number" "652-SRN2009T-R47M")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Bourns/SRN2009T-R47M?qs=xhbEVWpZdWfg36AS4swllw%3D%3D")
		(attr "Arrow Part Number" "SRN2009T-R47M")
		(attr "Arrow Price/Stock" "https://www.arrow.com/en/products/srn2009t-r47m/bourns?region=nac")
		(attr "Description" "Inductor Power Semi-Shielded Wirewound 470nH 20% 1MHz 25Q-Factor Ferrite 2A 38mOhm DCR 0806 T/R")
		(attr "Datasheet Link" "https://componentsearchengine.com/Datasheets/1/SRN2009T-R47M.pdf")
		(attr "Height" "0.95 mm")
	)

)
