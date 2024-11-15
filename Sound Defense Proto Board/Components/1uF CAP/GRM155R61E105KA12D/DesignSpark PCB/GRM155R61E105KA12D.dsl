SamacSys ECAD Model
233419/1476731/2.50/2/3/Capacitor

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r62_60"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.6) (shapeHeight 0.62))
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
			(pad (padNum 1) (padStyleRef r62_60) (pt -0.46, 0) (rotation 0))
			(pad (padNum 2) (padStyleRef r62_60) (pt 0.46, 0) (rotation 0))
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
	(symbolDef "GRM155R61E105KA12D" (originalName "GRM155R61E105KA12D")

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
	(compDef "GRM155R61E105KA12D" (originalName "GRM155R61E105KA12D") (compHeader (numPins 2) (numParts 1) (refDesPrefix C)
		)
		(compPin "1" (pinName "1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "GRM155R61E105KA12D"))
		(attachedPattern (patternNum 1) (patternName "CAPC1005X55N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Manufacturer_Name" "Murata Electronics")
		(attr "Manufacturer_Part_Number" "GRM155R61E105KA12D")
		(attr "Mouser Part Number" "81-GRM155R61E105KA2D")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Murata-Electronics/GRM155R61E105KA12D?qs=hiffU4J9V6bE4a81t2Mv5A%3D%3D")
		(attr "Arrow Part Number" "GRM155R61E105KA12D")
		(attr "Arrow Price/Stock" "https://www.arrow.com/en/products/grm155r61e105ka12d/murata-manufacturing?region=nac")
		(attr "Description" "MURATA - GRM155R61E105KA12D - CAP, MLCC, X5R, 1UF, 25V, 0402")
		(attr "Datasheet Link" "http://www.murata.com/~/media/webrenewal/support/library/catalog/products/capacitor/mlcc/c02e.pdf")
		(attr "Height" "0.55 mm")
	)

)
