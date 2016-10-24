//
//  ViewControllerCalifica.swift
//  protocolosSwift3Ago16
//
//  Created by alumno on 22/09/16.
//  Copyright © 2016 com.itesm. All rights reserved.
//

import UIKit

protocol  ProtocoloModificar {
	func modificar(act: Actividad) -> Void
	func quitaVista()-> Void
}

class ViewControllerCalifica: UIViewController {
	
	
	@IBOutlet weak var tfNombre: UITextField!
	@IBOutlet weak var tfCalificacion: UITextField!
	@IBOutlet weak var tvComentarios: UITextView!
	var delegado: ProtocoloModificar!
	var actividad: Actividad!

    override func viewDidLoad() {
        super.viewDidLoad()
		self.title = "Califica"
		tfNombre.text = actividad.nombreAlum
		tfCalificacion.text = String(actividad.calif)
		tvComentarios.text = actividad.coment
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	@IBAction func oprimiListo(_ sender: AnyObject) {
		let nom = tfNombre.text
		let cali = Int(tfCalificacion.text!)
		let com = tvComentarios.text
		if nom != nil && cali != nil && com != nil {
			let actividad = Actividad(nombreAlum: nom!, calif: cali!, coment: com!)
			delegado.modificar(act: actividad)
			delegado.quitaVista()
		}
		
	}
    

}
