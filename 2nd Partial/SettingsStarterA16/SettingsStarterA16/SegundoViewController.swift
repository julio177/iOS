//
//  SegundoViewController.swift
//  SettingsStarterA16
//
//  Created by Yolanda Martinez on 10/8/16.
//  Copyright © 2016 com.itesm. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController {

    @IBOutlet weak var swSonido: UISwitch!
    @IBOutlet weak var slVolumen: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		let defaults = UserDefaults.standard
		swSonido.isOn = defaults.bool(forKey: "sonido")
		slVolumen.value = defaults.float(forKey: "volumen")
    }
	
	override func viewWillDisappear(_ animated: Bool) {
		let defaults = UserDefaults.standard
		defaults.set(swSonido.isOn, forKey: "sonido")
		defaults.set(slVolumen.value, forKey: "volumen")
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
