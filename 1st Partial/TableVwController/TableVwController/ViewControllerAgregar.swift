//
//  ViewControllerAgregar.swift
//  TableVwController
//
//  Created by alumno on 19/09/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

protocol ProtocoloAgregarJugador {
	func agregarJugador(nombre: String, puntos: Int, email: String)-> Void
	func quitaVista()-> Void
}

class ViewControllerAgregar: UIViewController {
	

	@IBOutlet weak var tfNombre: UITextField!
	
	@IBOutlet weak var tfCorreo: UITextField!
	
	@IBOutlet weak var tfPuntos: UITextField!
	
	var delegado: ProtocoloAgregarJugador!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
	
	
	// MARK: - Metodos de accion
	
	@IBAction func oprimiGuardar(sender: AnyObject) {
		let nom = tfNombre.text
		let punt = Int(tfPuntos.text!)
		let emai = tfCorreo.text
		
		if nom != nil && punt != nil && emai != nil {
			delegado.agregarJugador(nom!, puntos: punt!, email: emai!)
			delegado.quitaVista()
		}
	}

}
