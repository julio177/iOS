//
//  ViewController.swift
//  persistenciaConPlists
//
//  Created by alumno on 06/10/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var tfDato1: UITextField!
	@IBOutlet weak var tfDato2: UITextField!
	@IBOutlet weak var tfDato3: UITextField!
	@IBOutlet weak var tfDato4: UITextField!
	
	func dataFilePath() -> String {
		let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
		let documentsDirectory = paths[0]
		
		return documentsDirectory.appending("/datos.plist")
	}
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let app = UIApplication.shared
		
		NotificationCenter.default.addObserver(self, selector: #selector(aplicacionTerminara(notificacion:)), name: .UIApplicationDidEnterBackground, object: app)
		
		let filePath = dataFilePath()
		if FileManager.default.fileExists(atPath: filePath) {
			let arreglo = NSArray(contentsOfFile: filePath)
			
			tfDato1.text = arreglo![0] as? String
			tfDato2.text = arreglo![1] as? String
			tfDato3.text = arreglo![2] as? String
			tfDato4.text = arreglo![3] as? String
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	//MARK: - Metodos de notificacion
	
	func aplicacionTerminara(notificacion: NSNotification) {
		let arreglo : NSMutableArray = []
		
		arreglo.addObjects(from: [tfDato1.text!, tfDato2.text!, tfDato3.text!, tfDato4.text!])
		
		arreglo.write(toFile: dataFilePath(), atomically: true)
	}

}

