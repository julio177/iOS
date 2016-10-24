//
//  CustomTableViewCell.swift
//  CeldasALaMedida
//
//  Created by alumno on 14/10/16.
//  Copyright © 2016 a. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
	
	@IBOutlet weak var imgCell: UIImageView!
	@IBOutlet weak var tfTipo: UITextField!
	@IBOutlet weak var tfCapacidad: UITextField!
	@IBOutlet weak var tfPrecio: UITextField!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
