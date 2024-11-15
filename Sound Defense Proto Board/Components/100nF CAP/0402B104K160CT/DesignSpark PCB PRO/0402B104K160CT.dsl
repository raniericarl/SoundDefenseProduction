SamacSys ECAD Model
242574/1476731/2.50/2/3/Capacitor

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r62_56"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.56) (shapeHeight 0.62))
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
	(patternDef "CAPC1005X55N" (originalName "CAPC1005X55N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r62_56) (pt -0.48, 0) (rotation 0))
			(pad (padNum 2) (padStyleRef r62_56) (pt 0.48, 0) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 30)
			(line (pt -0.91 0.46) (pt 0.91 0.46) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 0.91 0.46) (pt 0.91 -0.46) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 0.91 -0.46) (pt -0.91 -0.46) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt -0.91 -0.46) (pt -0.91 0.46) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.5 0.25) (pt 0.5 0.25) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.5 0.25) (pt 0.5 -0.25) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 0.5 -0.25) (pt -0.5 -0.25) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -0.5 -0.25) (pt -0.5 0.25) (width 0.1))
		)
	)
	(symbolDef "0402B104K160CT" (originalName "0402B104K160CT")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 0 mils -35 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 500 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 500 mils -35 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Default"))
		))
		(line (pt 220 mils 100 mils) (pt 220 mils -100 mils) (width 6 mils))
		(line (pt 280 mils 100 mils) (pt 280 mils -100 mils) (width 6 mils))
		(line (pt 200 mils 0 mils) (pt 220 mils 0 mils) (width 6 mils))
		(line (pt 280 mils 0 mils) (pt 300 mils 0 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 350 mils 250 mils) (justify 24) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "0402B104K160CT" (originalName "0402B104K160CT") (compHeader (numPins 2) (numParts 1) (refDesPrefix C)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "0402B104K160CT"))
		(attachedPattern (patternNum 1) (patternName "CAPC1005X55N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Manufacturer_Name" "Walsin Technology Corporation")
		(attr "Manufacturer_Part_Number" "0402B104K160CT")
		(attr "Mouser Part Number" "791-0402B104K160CT")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Walsin/0402B104K160CT?qs=fIkAfuXiAQJ1PS4dYXnTSQ%3D%3D")
		(attr "Arrow Part Number" "")
		(attr "Arrow Price/Stock" "")
		(attr "Description" "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0.1 uF 10% 16V")
		(attr "Datasheet Link" "https://componentsearchengine.com/Datasheets/2/0402B104K160CT.pdf")
		(attr "Height" "0.55 mm")
	)

)