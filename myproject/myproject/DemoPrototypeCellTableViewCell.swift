//
//  DemoPrototypeCellTableViewCell.swift
//  myproject
//
//  Created by Auriga on 13/03/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit

class DemoPrototypeCellTableViewCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
