//
//  ViewController.swift
//  protocolosSwift3Ago16
//
//  Created by Yolanda Martinez on 9/20/16.
//  Copyright © 2016 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var actividad: Actividad!

    @IBOutlet weak var lbNombreAlumno: UILabel!
    @IBOutlet weak var lbCalificacion: UILabel!
    @IBOutlet weak var textViewComentarios: UITextView!
    
    var delegado: ProtocoloModificar!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        lbNombreAlumno.text = actividad.nombreAlum
		lbCalificacion.text = String(actividad.calif)
		textViewComentarios.text = actividad.coment
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "calificar" {
			let viewCalificar = segue.destination as! ViewControllerCalifica
			viewCalificar.delegado = self.delegado
			viewCalificar.actividad = self.actividad
		}
	}
	
}

