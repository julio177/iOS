//
//  ViewController.swift
//  MasterMind
//
//  Created by alumno on 29/08/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var scMode: UISegmentedControl!
  @IBOutlet weak var vwSquare1: UIView!
  @IBOutlet weak var vwSquare2: UIView!
  @IBOutlet weak var vwSquare3: UIView!
  @IBOutlet weak var vwSquare4: UIView!
  @IBOutlet weak var vwAnswer: UIView!
  

  @IBOutlet weak var btOne: UIButton!
  @IBOutlet weak var btTwo: UIButton!
  @IBOutlet weak var btThree: UIButton!
  @IBOutlet weak var btFour: UIButton!
  
  @IBOutlet weak var btProbar: UIButton!
  var iTries = 0
  
  let colorsArray = [UIColor(red: 0.7686, green: 0.0627, blue: 0, alpha: 1.0),
                     UIColor(red: 0.9294, green: 0.8824, blue: 0.0431, alpha: 1.0),
                     UIColor(red: 0.0392, green: 0.7882, blue: 0.1137, alpha: 1.0),
                     UIColor(red: 0.0392, green: 0.7569, blue: 0.8078, alpha: 1.0),
                     UIColor(red: 0.8078, green: 0.0392, blue: 0.7843, alpha: 1.0),
                     UIColor(red: 0.0039, green: 0.0118, blue: 0.1176, alpha: 1.0)]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    btOne.backgroundColor = colorsArray[0]
    btTwo.backgroundColor = colorsArray[0]
    btThree.backgroundColor = colorsArray[0]
    btFour.backgroundColor = colorsArray[0]
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  // # MARK : - Action methods
  
  @IBAction func changeColor(sender: UIButton) {
    if sender.backgroundColor == colorsArray[0] {
      sender.backgroundColor = colorsArray[1]
    }
    else if sender.backgroundColor == colorsArray[1]{
      sender.backgroundColor = colorsArray[2]
    }
    else if sender.backgroundColor == colorsArray[2]{
      sender.backgroundColor = colorsArray[3]
    }
    else if sender.backgroundColor == colorsArray[3]{
      sender.backgroundColor = colorsArray[4]
    }
    else if sender.backgroundColor == colorsArray[4]{
      sender.backgroundColor = colorsArray[5]
    }
    else if sender.backgroundColor == colorsArray[5]{
      sender.backgroundColor = colorsArray[0]
    }
  }
  
  
  @IBAction func generateRand(sender: UIButton) {
    var arrayAux = colorsArray
    var colorHelper : UIColor
    var randomIndex = Int(arc4random_uniform(UInt32(arrayAux.count)))
    
    vwSquare1.backgroundColor = arrayAux[randomIndex]
    colorHelper = arrayAux[5]
    arrayAux[5] = arrayAux[randomIndex]
    arrayAux[randomIndex] = colorHelper
    
    randomIndex = Int(arc4random_uniform(UInt32(arrayAux.count - 1)))
    vwSquare2.backgroundColor = arrayAux[randomIndex]
    colorHelper = arrayAux[4]
    arrayAux[4] = arrayAux[randomIndex]
    arrayAux[randomIndex] = colorHelper
    
    randomIndex = Int(arc4random_uniform(UInt32(arrayAux.count - 2)))
    vwSquare3.backgroundColor = arrayAux[randomIndex]
    colorHelper = arrayAux[3]
    arrayAux[3] = arrayAux[randomIndex]
    arrayAux[randomIndex] = colorHelper
    
    randomIndex = Int(arc4random_uniform(UInt32(arrayAux.count - 3)))
    vwSquare4.backgroundColor = arrayAux[randomIndex]
    vwAnswer.hidden = true
    scMode.selectedSegmentIndex = 1
  }
  
  
  
  @IBAction func changeMode(sender: UISegmentedControl) {
    switch scMode.selectedSegmentIndex {
      case 0:
        vwAnswer.hidden = false
      break
      case 1:
        vwAnswer.hidden = true
      break
    default:
      break
    }
  }
  
  @IBAction func testColors(sender: UIButton) {
    
  }
  

}

