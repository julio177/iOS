//
//  ViewControllerDetalle.swift
//  TableView
//
//  Created by alumno on 05/09/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewControllerDetalle: UIViewController {
	
	
	@IBOutlet weak var lbName: UILabel!
	
	var sName: String!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		lbName.text = sName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
