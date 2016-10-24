//
//  ViewController.swift
//  TableVwController
//
//  Created by alumno on 08/09/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var player: Jugador!
	var imagen: UIImage!

	@IBOutlet weak var lbName: UILabel!
	@IBOutlet weak var lbMail: UILabel!
	@IBOutlet weak var lbPoints: UILabel!
	@IBOutlet weak var imageVw: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		lbName.text = player.nombre
		lbMail.text = player.email
		lbPoints.text = String(player.puntos)
		imageVw.image = imagen
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

