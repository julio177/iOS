//
//  ViewController.swift
//  Prismas
//
//  Created by alumno on 01/09/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var lbInfo: UILabel!
	@IBOutlet weak var lbVolumen: UILabel!
	
	var sInfo: String!
	var sVolumen: String!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func unwindEsfera(sender: UIStoryboardSegue){
		//No contiene nada a proposito
		//Es para tener a donde regresar
		lbInfo.text = sInfo!
		lbVolumen.text = sVolumen!
	}
	
	@IBAction func unwindPrisma(sender: UIStoryboardSegue){
		
	}


}

