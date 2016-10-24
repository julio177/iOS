//
//  Alumnos.swift
//  protocolosSwift3Ago16
//
//  Created by Yolanda Martinez on 9/20/16.
//  Copyright © 2016 com.itesm. All rights reserved.
//

import UIKit

class Actividad: NSObject {
    
    var nombreAlum : String!
    var calif : Int!
    var coment : String!
    
    init(nombreAlum: String, calif: Int, coment: String) {
        self.nombreAlum = nombreAlum
        self.calif = calif
        self.coment = coment
    }
    
    init(nombreAlum: String) {
        self.nombreAlum = nombreAlum
        self.calif = 0
        self.coment = nil
    }
}
