//
//  TableViewController.swift
//  protocolosSwift3Ago16
//
//  Created by alumno on 22/09/16.
//  Copyright © 2016 com.itesm. All rights reserved.
//

import UIKit

var selectedRow: Int!

class TableViewController: UITableViewController, ProtocoloModificar {
	
	var actividades: [Actividad]!

    override func viewDidLoad() {
        super.viewDidLoad()
		self.title = "Actividades"
		
		let act1 = Actividad(nombreAlum: "Julio")
		let act2 = Actividad(nombreAlum: "Edgardo")
		let act3 = Actividad(nombreAlum: "Lalo")
		actividades = [act1, act2, act3]
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return actividades.count
    }

	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)
		cell.textLabel?.text = actividades[indexPath.row].nombreAlum
		cell.detailTextLabel?.text = String(actividades[indexPath.row].calif)

        return cell
    }
	


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "mostrar" {
			let viewMostrar = segue.destination as! ViewController
			let tmpView = view as! UITableView
			let indexPath = tmpView.indexPathForSelectedRow
			viewMostrar.actividad = actividades[(indexPath?.row)!]
			selectedRow = indexPath?.row
			viewMostrar.delegado = self
		}
    }
	
	func modificar(act: Actividad) {
		actividades[selectedRow] = act
		tableView.reloadData()
	}
	
	func quitaVista() {
		navigationController?.popToRootViewController(animated: true)
	}

}
