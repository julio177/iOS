//
//  ViewControllerEdit.swift
//  UsersView
//
//  Created by alumno on 29/08/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewControllerEdit: UIViewController {
  
  
  @IBOutlet weak var tfNombre: UITextField!
  @IBOutlet weak var tfEmail: UITextField!
	@IBOutlet weak var btGuardar: UIButton!
  
  var nombre: String!
  var email: String!

    override func viewDidLoad() {
        super.viewDidLoad()
		tfNombre.text = nombre
		tfEmail.text = email
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if sender as! UIButton == btGuardar {
			let viewIni = segue.destinationViewController as! ViewController
			viewIni.nombre = tfNombre.text
			viewIni.email = tfEmail.text
		}
    }
	

}
