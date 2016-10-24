//
//  ViewController.swift
//  divisas
//
//  Created by alumno on 11/08/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  @IBOutlet weak var tfTipoCambio: UITextField!
  
  
  @IBOutlet weak var tfPesos: UITextField!
  
  
  @IBOutlet weak var tfDolares: UITextField!
  
  
  @IBOutlet weak var viewImagen: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    viewImagen.image = UIImage(named: "dollar")
    let tap = UITapGestureRecognizer(target: self, action: #selector (quitaTeclado))
    view.addGestureRecognizer(tap)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //MARK: - Metodos de accion

  @IBAction func calcula(sender: UIButton) {
    let tipoCambio = Double(tfTipoCambio.text!)
    let pesos = Double(tfPesos.text!)
    if tipoCambio != nil && pesos != nil {
      let dolares = pesos! / tipoCambio!
      tfDolares.text = String(format: "%0.2f", dolares)
    }
    else {
      let alerta = UIAlertController(title: "Error en los datos",
                                     message: "Todos los campos deen tener un valor numerico",
                                     preferredStyle: .Alert)
      alerta.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
      
      presentViewController(alerta, animated: true, completion: nil)
    }
  }
  
  func quitaTeclado() {
    view.endEditing(true)
  }

}

