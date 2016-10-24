//
//  Jugador.swift
//  TableVwController
//
//  Created by alumno on 08/09/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class Jugador: NSObject {
	var nombre: String = ""
	var puntos: Int = 0
	var email: String = ""
	
	init(nombre: String, puntos: Int, email: String) {
		self.nombre = nombre
		self.puntos = puntos
		self.email = email
	}
}
