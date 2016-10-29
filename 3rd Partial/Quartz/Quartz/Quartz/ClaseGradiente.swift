//
//  ClaseGradiente.swift
//  Quartz
//
//  Created by alumno on 27/10/16.
//  Copyright © 2016 815968. All rights reserved.
//

import UIKit

class ClaseGradiente: UIView {

	
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
		let contextoG = UIGraphicsGetCurrentContext()!
		
		//crea el arreglo de colores para el gradiente
		let startColor = UIColor(red: 0, green: 0.7176, blue: 0.7686, alpha: 1.0)
		let endColor = UIColor(red: 0, green: 0.949, blue: 0.6941, alpha: 1.0)
		let colores = [startColor.cgColor, endColor.cgColor]
		
		// establecer el espacio de color
		let espacioDeColor = CGColorSpaceCreateDeviceRGB()
		
		// establece los lugares en los que cambia el color
		let localizacionColores :[CGFloat] = [0.0, 1.0]
		
		// crea el gradiente
		let gradiente = CGGradient(colorsSpace: espacioDeColor, 		colors: colores as CFArray, locations: localizacionColores)
		
		let puntoInicio = CGPoint.zero
		let puntoFin = CGPoint(x:0, y: self.bounds.height)
		contextoG.drawLinearGradient(gradiente!,
		                            start: puntoInicio,
		                            end: puntoFin, options: CGGradientDrawingOptions.drawsAfterEndLocation)
		

		let myHeight = self.frame.height
		
		contextoG.setLineWidth(3)
		contextoG.setStrokeColor(UIColor.black.cgColor)
		contextoG.move(to: CGPoint(x: 100, y: myHeight - 100))
		contextoG.addLine(to: CGPoint(x: 120, y: myHeight - 150))
		contextoG.addLine(to: CGPoint(x: 150, y: myHeight - 130))
		contextoG.addLine(to: CGPoint(x: 180, y: myHeight - 80))
		contextoG.addLine(to: CGPoint(x: 210, y: myHeight - 160))
		contextoG.strokePath()
		
		
	}
	
}
