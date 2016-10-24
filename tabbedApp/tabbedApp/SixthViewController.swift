//
//  SixthViewController.swift
//  tabbedApp
//
//  Created by alumno on 17/10/16.
//  Copyright © 2016 a. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {
	
	var sRow : String!
	var sPassword : String!

	@IBOutlet weak var lbRow: UILabel!
	@IBOutlet weak var lbPath: UILabel!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		lbRow.text = sRow;
		lbPath.text = sPassword;
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
