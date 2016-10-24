//
//  FifthViewController.swift
//  tabbedApp
//
//  Created by alumno on 17/10/16.
//  Copyright © 2016 a. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
	
	
	@IBOutlet weak var tfPassword: UITextField!

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination
        // Pass the selected object to the new view controller.
		let view = segue.destination as! NavigationViewController
		view.datoLogin = tfPassword.text
    }
	

}
