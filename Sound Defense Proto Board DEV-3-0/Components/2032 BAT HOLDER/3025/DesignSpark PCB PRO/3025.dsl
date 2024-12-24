SamacSys ECAD Model
541313/1476731/2.50/3/3/Undefined or Miscellaneous

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "s277.5_h185"
		(holeDiam 1.85)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 2.775) (shapeHeight 2.775))
		(padShape (layerNumRef 16) (padShapeType Rect)  (shapeWidth 2.775) (shapeHeight 2.775))
	)
	(padStyleDef "c277.5_h185"
		(holeDiam 1.85)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 2.775) (shapeHeight 2.775))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 2.775) (shapeHeight 2.775))
	)
	(padStyleDef "s396"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 3.960) (shapeHeight 3.960))
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
	(patternDef "3025" (originalName "3025")
		(multiLayer
			(pad (padNum 1) (padStyleRef s277.5_h185) (pt -11.925, 0.000) (rotation 90))
			(pad (padNum 2) (padStyleRef c277.5_h185) (pt 11.925, 0.000) (rotation 90))
			(pad (padNum 3) (padStyleRef s396) (pt 0.000, 0.000) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0.000, 0.198) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 30)
			(line (pt -14.313 11.797) (pt 14.313 11.797) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 14.313 11.797) (pt 14.313 -11.4) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 14.313 -11.4) (pt -14.313 -11.4) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -14.313 -11.4) (pt -14.313 11.797) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.785 -10.4) (pt -11.925 -3.9) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -11.925 -3.9) (pt -11.925 3.9) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -11.925 3.9) (pt -7.5 10.4) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -7.5 10.4) (pt -7.5 10.4) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(arc (pt -6.75, 9.8895) (radius 0.907) (startAngle 145.8) (sweepAngle -111.5) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -6 10.4) (pt -3.785 9.1) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.785 9.1) (pt -3.785 9.1) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(arc (pt 0, 15.549) (radius 7.478) (startAngle 239.6) (sweepAngle 60.8) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.785 9.1) (pt 6 10.4) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 6 10.4) (pt 6 10.4) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(arc (pt 6.75, 9.122) (radius 1.482) (startAngle 120.4) (sweepAngle -60.8) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 7.5 10.4) (pt 11.925 3.9) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 11.925 3.9) (pt 11.925 -3.9) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 11.925 -3.9) (pt 3.785 -10.4) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.785 -10.4) (pt -3.785 -10.4) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -11.925 -3.9) (pt -3.785 -10.4) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.785 -10.4) (pt 3.785 -10.4) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 3.785 -10.4) (pt 11.925 -3.9) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -11.925 3.9) (pt -7.5 10.4) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -7.5 10.4) (pt -7.5 10.4) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -6.75, 9.8895) (radius 0.907) (startAngle 145.8) (sweepAngle -111.5) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -6 10.4) (pt -3.785 9.1) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.785 9.1) (pt -3.785 9.1) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 0, 15.549) (radius 7.478) (startAngle 239.6) (sweepAngle 60.8) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 3.785 9.1) (pt 6 10.4) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 6 10.4) (pt 6 10.4) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 6.75, 9.122) (radius 1.482) (startAngle 120.4) (sweepAngle -60.8) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 7.5 10.4) (pt 11.925 3.9) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -13.8 0) (pt -13.8 0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -13.85, 0) (radius 0.05) (startAngle .0) (sweepAngle 180.0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -13.9 0) (pt -13.9 0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -13.85, 0) (radius 0.05) (startAngle 180) (sweepAngle 180.0) (width 0.1))
		)
	)
	(symbolDef "3025" (originalName "3025")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 700 mils 100 mils) (width 6 mils))
		(line (pt 700 mils 100 mils) (pt 700 mils -300 mils) (width 6 mils))
		(line (pt 700 mils -300 mils) (pt 200 mils -300 mils) (width 6 mils))
		(line (pt 200 mils -300 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 750 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "3025" (originalName "3025") (compHeader (numPins 3) (numParts 1) (refDesPrefix U)
		)
		(compPin "1" (pinName "+_1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "+_2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "-") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "3025"))
		(attachedPattern (patternNum 1) (patternName "3025")
			(numPads 3)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
			)
		)
		(attr "Manufacturer_Name" "Keystone Electronics")
		(attr "Manufacturer_Part_Number" "3025")
		(attr "Mouser Part Number" "534-3025")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Keystone-Electronics/3025?qs=F3SQOOfR3Vt%252BCgjaGDhpOQ%3D%3D")
		(attr "Arrow Part Number" "")
		(attr "Arrow Price/Stock" "")
		(attr "Description" "Coin Cell Battery Holders THM COIN CELL CLIP FOR (2) 2032")
		(attr "Datasheet Link" "https://www.keyelco.com/product-pdf.cfm?p=740")
		(attr "Height" "7.75 mm")
	)

)