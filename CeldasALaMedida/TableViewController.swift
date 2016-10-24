//
//  TableViewController.swift
//  CeldasALaMedida
//
//  Created by alumno on 14/10/16.
//  Copyright © 2016 a. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
	var arrDiccionarios : NSArray!
	
    override func viewDidLoad() {
        super.viewDidLoad()

		let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
		
		arrDiccionarios = NSArray(contentsOfFile: path!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrDiccionarios.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as! CustomTableViewCell
		
		let dic = arrDiccionarios[indexPath.row] as! NSDictionary
		
		cell.tfTipo.text = dic.value(forKey: "Tipo") as! String!
		cell.tfCapacidad.text = dic.value(forKey: "Capacidad") as! String!
		
		let precio = dic.value(forKey: "Precio") as! NSNumber
		let formatter = NumberFormatter()
		formatter.numberStyle = .currency
		
		cell.tfPrecio.text = formatter.string(from: precio)
		
		let sUrl = dic.value(forKey: "urlFoto") as! String
		let nsurl = NSURL(string: sUrl)
		let imgData = NSData(contentsOf: nsurl! as URL)
		cell.imgCell.image = UIImage(data: imgData! as Data)

        // Configure the cell...

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
