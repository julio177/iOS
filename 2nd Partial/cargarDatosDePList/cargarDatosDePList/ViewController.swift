//
//  ViewController.swift
//  cargarDatosDePList
//
//  Created by alumno on 03/10/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	var arrDiccionarios : NSArray!
	
	
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var lbTipo: UILabel!
	@IBOutlet weak var lbCapacidad: UILabel!
	@IBOutlet weak var lbPrecio: UILabel!
	@IBOutlet weak var imgFoto: UIImageView!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
		
		arrDiccionarios = NSArray(contentsOfFile: path!)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	//MARK: - Metodos de data source de Table View
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return arrDiccionarios.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)
		let dic = arrDiccionarios[indexPath.row] as! NSDictionary
		cell.textLabel?.text = dic.value(forKey: "Tipo") as? String
		
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let dic = arrDiccionarios[indexPath.row] as! NSDictionary
		lbTipo.text = dic.value(forKey: "Tipo") as? String
		lbCapacidad.text = dic.value(forKey: "Capacidad") as? String
		let precio = dic.value(forKey: "Precio") as? NSNumber
		
		let formatter = NumberFormatter()
		formatter.numberStyle = .currency
		
		lbPrecio.text = formatter.string(from: precio!)
		
		let sUrl = dic.value(forKey: "urlFoto") as! String
		let nsurl = NSURL(string: sUrl)
		let imgData = NSData(contentsOf: nsurl as! URL)
		imgFoto.image = UIImage(data: imgData! as Data)
		
	}
}

