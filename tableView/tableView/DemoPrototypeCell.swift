//
//  DemoPrototypeCell.swift
//  tableView
//
//  Created by Auriga on 13/03/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit

class DemoPrototypeCell: UITableViewCell {
 
    @IBOutlet weak var imageField: UIImageView!
    
    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var priceField: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
