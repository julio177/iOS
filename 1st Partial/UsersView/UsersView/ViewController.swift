//
//  ViewController.swift
//  UsersView
//
//  Created by alumno on 29/08/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var imgUser: UIImageView!
  @IBOutlet weak var tfNombre: UITextField!
  @IBOutlet weak var tfEmail: UITextField!
  
  var nombre: String!
  var email: String!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - Metodos de navegacion
  
  
  @IBAction func unwindInfo(sender: UIStoryboardSegue){
    //No contiene nada a proposito
    //Es para tener a donde regresar
  }
  
  @IBAction func unwindEdit(sender: UIStoryboardSegue){
    tfNombre.text = nombre
	tfEmail.text = email
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "info" {
      let viewInfo = segue.destinationViewController as! ViewControllerInfo
      viewInfo.imagen = imgUser.image
      viewInfo.ancho = imgUser.image?.size.width
      viewInfo.altura = imgUser.image?.size.height
    }
    else if segue.identifier == "editar" {
      let viewEdit = segue.destinationViewController as! ViewControllerEdit
      viewEdit.nombre = tfNombre.text
      viewEdit.email = tfEmail.text
    }
  }
}

