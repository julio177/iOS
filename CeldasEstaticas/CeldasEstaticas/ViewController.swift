//
//  ViewController.swift
//  CeldasEstaticas
//
//  Created by alumno on 14/10/16.
//  Copyright © 2016 a. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var lbTitle: UILabel!
	var sTitle : String!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		lbTitle.text = sTitle
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

