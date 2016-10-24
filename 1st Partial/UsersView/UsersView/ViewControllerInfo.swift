//
//  ViewControllerInfo.swift
//  UsersView
//
//  Created by alumno on 29/08/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewControllerInfo: UIViewController {
  
  
  @IBOutlet weak var imgUser: UIImageView!
  @IBOutlet weak var tfAncho: UITextField!
  @IBOutlet weak var tfAltura: UITextField!
  
  var imagen: UIImage!
  var ancho: CGFloat!
  var altura: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
		tfAncho.text = String(ancho)
		tfAltura.text = String(altura)
		imgUser.image = imagen
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
