//
//  TableViewController.swift
//  TableVwController
//
//  Created by alumno on 08/09/16.
//  Copyright © 2016 alumno. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, ProtocoloAgregarJugador {
	var Players : [Jugador]!
	

    override func viewDidLoad() {
        super.viewDidLoad()
		let player1 = Jugador(nombre: "Evi", puntos: 0, email: "evan@evi.com")
		let player2 = Jugador(nombre: "Avi", puntos: 0, email: "javi@avi.com")
		let player3 = Jugador(nombre: "Juli", puntos: 0, email: "julio@uli.com")
		
		Players = [player1, player2, player3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Players.count
    }

	
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("idCell", forIndexPath: indexPath)

		cell.textLabel?.text = Players[indexPath.row].nombre
		cell.detailTextLabel?.text = "Correo: \(Players[indexPath.row].email). Puntos: \(Players[indexPath.row].puntos)"
		cell.imageView?.image = UIImage(named: "user")
		return cell
    }
	

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "mostrar" {
			let viewDetalle = segue.destinationViewController as! ViewController
			let tmpView = view as! UITableView
			let indexPath = tmpView.indexPathForSelectedRow
			viewDetalle.player = Players[(indexPath?.row)!]
			viewDetalle.imagen = UIImage(named: "user")
		}
		else if segue.identifier == "agregar" {
			let view = segue.destinationViewController as! ViewControllerAgregar
			view.delegado = self
		}
		
    }
	
	func agregarJugador(nombre: String, puntos: Int, email: String) {
		let jugador = Jugador(nombre: nombre, puntos: puntos, email: email)
		Players.append(jugador)
		tableView.reloadData()
	}
	
	func quitaVista() {
		navigationController?.popViewControllerAnimated(true)
	}

}
