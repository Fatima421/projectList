//
//  TableViewCell.swift
//  ProjectList
//
//  Created by Fatima Syed on 14/09/2021.
//  Copyright © 2021 Fatima Syed. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var ImagePerson: UIImageView!
    @IBOutlet weak var LabelName: UILabel!
    @IBOutlet weak var LabelCargo: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
