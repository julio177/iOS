//
//  ViewController.swift
//  Quartz
//
//  Created by alumno on 27/10/16.
//  Copyright © 2016 815968. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var swSwitch: UISwitch!
	@IBOutlet weak var vwTop: ClaseVista!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	@IBAction func pintaTriangulo(_ sender: AnyObject) {
		if swSwitch.isOn {
			vwTop.pintaTriangulo = true
			vwTop.setNeedsDisplay()
		}
		else {
			vwTop.pintaTriangulo = false
			vwTop.setNeedsDisplay()
		}
	}

}

