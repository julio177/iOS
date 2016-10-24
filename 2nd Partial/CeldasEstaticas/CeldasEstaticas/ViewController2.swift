//
//  ViewController2.swift
//  CeldasEstaticas
//
//  Created by alumno on 14/10/16.
//  Copyright © 2016 a. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

	@IBOutlet weak var lbTitle: UILabel!
	var sTitle : String!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		lbTitle.text = sTitle
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
