//
//  ViewController.swift
//  TableView
//
//  Created by alumno on 05/09/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	var lista = ["Ichi", "Ni", "San","Yo", "Go", "Roku", "Nana"]

	@IBOutlet weak var outletTableView: UITableView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	//MARK: - Metodos de data source de Table View
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return lista.count
	}
	
	// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
	// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("idCell", forIndexPath: indexPath)
		cell.textLabel?.text = lista[indexPath.row]
		cell.detailTextLabel?.text = "\(indexPath.row + 1)"
		cell.imageView?.image = UIImage(named: "user")
		return cell
	}
	
	//MARK: - Metodos de navegacion
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let viewDetalle = segue.destinationViewController as! ViewControllerDetalle
		let indexPath = outletTableView.indexPathForSelectedRow
		viewDetalle.sName = lista[(indexPath?.row)!]
	}
}

