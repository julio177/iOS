//
//  ViewControllerEsfera.swift
//  Prismas
//
//  Created by alumno on 01/09/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit
import Darwin // or Foundation or UIKit


class ViewControllerEsfera: UIViewController {

	@IBOutlet weak var tfRadio: UITextField!
	@IBOutlet weak var btGuardar: UIButton!
	let pi = M_PI
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
		if sender as! UIButton == btGuardar {
			let viewIni = segue.destinationViewController as! ViewController
			viewIni.sInfo = "Radio: \(66776)"
			var dVolumen = Double(tfRadio.text!)
			dVolumen = (4/3) * pi * pow(dVolumen!, 3)
			viewIni.sVolumen = "\(dVolumen)"
		}
    }
	

}
