//
//  ViewController.swift
//  SettingsStarterA16
//
//  Created by Yolanda Martinez on 10/8/16.
//  Copyright © 2016 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfSonido: UITextField!
    @IBOutlet weak var tfExperiencia: UITextField!
    @IBOutlet weak var tfVolumen: UITextField!
	
	func cargaSettings() {
		let defaults = UserDefaults.standard
		
		tfNombre.text = defaults.object(forKey: "nombreUsuario") as? String
		
		let sonido = defaults.bool(forKey: "sonido")
		tfSonido.text = "\(sonido)"
		
		let volumen = defaults.float(forKey: "volumen")
		tfVolumen.text = "\(volumen)"
		
		tfExperiencia.text = defaults.string(forKey: "experiencia")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		cargaSettings()
		let app = UIApplication.shared
		NotificationCenter.default.addObserver(self, selector: #selector(cargaSettings), name: .UIApplicationWillEnterForeground, object: app)
    }
	
	override func viewWillAppear(_ animated: Bool) {
		cargaSettings()
	}
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

