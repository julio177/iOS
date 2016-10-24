//
//  ViewController.swift
//  Triangulos
//
//  Created by alumno on 19/08/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var tfLadoA: UITextField!
  
  
  @IBOutlet weak var tfLadoB: UITextField!
  
  
  @IBOutlet weak var tfLadoC: UITextField!
  
  
  @IBOutlet weak var lbResultado: UILabel!
  
  
  @IBOutlet weak var viewImagen: UIImageView!
  
  
  @IBOutlet weak var swCambio: UISwitch!
  
  
  @IBOutlet weak var btFuncion: UIButton!
  
  @IBAction func cambiaInterfaz(sender: UISwitch) {
    if swCambio.on {
      btFuncion.setTitle("Calcula Tipo", forState: .Normal)
      lbResultado.text = ""
    }
    else {
      //Oculta Imagen y cambia label de boton cuando el switch esta en OFF
      viewImagen.image = UIImage(named: "")
      btFuncion.setTitle("Calcula Area", forState: .Normal)
      lbResultado.text = ""
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    //viewImagen.image = UIImage(named: "bienvenido")
    //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
    backgroundImage.image = UIImage(named: "background")
    self.view.insertSubview(backgroundImage, atIndex: 0)
    let tap = UITapGestureRecognizer(target: self, action: #selector (quitaTeclado))
    view.addGestureRecognizer(tap)
    lbResultado.text = ""
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //MARK: - Metodos de accion
  
  
  @IBAction func calculaArea(sender: UIButton) {
    view.endEditing(true)
    let dLadoA = Double(tfLadoA.text!)
    let dLadoB = Double(tfLadoB.text!)
    let dLadoC = Double(tfLadoC.text!)
    
    if dLadoA != nil && dLadoB != nil && dLadoC != nil {
      //Valida que todos los capos tengan inputs
      if swCambio.on {
        //Se ejecuta al presionar el boton con el switch en ON
        if dLadoA == dLadoB && dLadoB == dLadoC {
          lbResultado.text = String(format:"Equilatero")
          viewImagen.image = UIImage(named: "equilatero")
        }
        else if dLadoA == dLadoB && dLadoB != dLadoC  || dLadoA == dLadoC && dLadoA != dLadoB || dLadoB == dLadoC && dLadoC != dLadoA {
          lbResultado.text = String(format: "Isosceles")
          viewImagen.image = UIImage(named: "isosceles")
        }
        else {
          lbResultado.text = String(format: "Escaleno")
          viewImagen.image = UIImage(named: "escaleno")
        }
      }
      else {
        //Se ejecuta al presionar el boton con el switch en OFF
        let s = Double((dLadoA! + dLadoB! + dLadoC!)/2)
        let area = sqrt(s * Double(s - dLadoA!) * Double(s - dLadoB!) * Double(s - dLadoC!))
        lbResultado.text = String(format: "Area: %0.2f", area)
      }
    }
    else {
      //Alerta en caso de que los campos no tengan valores
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

