//
//  ClaseVista.swift
//  Quartz
//
//  Created by alumno on 27/10/16.
//  Copyright © 2016 815968. All rights reserved.
//

import UIKit

class ClaseVista: UIView {
	
	var pintaTriangulo : Bool = true
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
		let contexto = UIGraphicsGetCurrentContext()!
		
		let color = UIColor.black.cgColor
		
		contexto.setLineWidth(3.0)
		contexto.setStrokeColor(color)
		contexto.setFillColor(UIColor.yellow.cgColor)
		
		let aRect = CGRect(x: 20, y: 30, width: 100, height: 100)
		contexto.fillEllipse(in: aRect)
		contexto.strokeEllipse(in: aRect)
		
		//Rectangulo con borde rojo y relleno azul
		contexto.setStrokeColor(UIColor.red.cgColor)
		contexto.setFillColor(UIColor.blue.cgColor)
		let bRect = CGRect(x: frame.width/2, y: 100, width: 80, height: 120)
		contexto.fill(bRect)
		contexto.stroke(bRect)
		
		//Dibujar linea
		contexto.move(to: CGPoint(x: 20, y: 110))
		contexto.addLine(to: CGPoint(x: 110, y: 20))
		contexto.strokePath()
		
		if pintaTriangulo {
			//Capa
			let capa = CGLayer(contexto, size: frame.size, auxiliaryInfo: nil)
			let contextoCapa = capa!.context!
			
			//Triangulo con color con transparencia
			contextoCapa.setFillColor(UIColor.purple.cgColor.copy(alpha: 0.5)!)
			contextoCapa.move(to: CGPoint(x: 70, y: 80))
			contextoCapa.addLine(to: CGPoint(x: 210, y: 60))
			contextoCapa.addLine(to: CGPoint(x: 170, y: 180))
			contextoCapa.closePath()
			contextoCapa.fillPath()
			
			//Stroke de triangulo
			let capa2 = CGLayer(contexto, size: frame.size, auxiliaryInfo: nil)
			let contexto2 = capa2!.context!
			contexto2.setLineWidth(3)
			contexto2.setStrokeColor(UIColor.black.cgColor)
			contexto2.move(to: CGPoint(x: 70, y: 80))
			contexto2.addLine(to: CGPoint(x: 210, y: 60))
			contexto2.addLine(to: CGPoint(x: 170, y: 180))
			contexto2.closePath()
			contexto2.strokePath()
			
			//Dibujo la capa
			contexto.draw(capa!, in: frame)
			contexto.draw(capa2!, in: frame)
		}
    }


}
