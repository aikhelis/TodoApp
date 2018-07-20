//
//  ItemTableViewCell.swift
//  SoloLearnTODO
//
//  Created by Aliaksandr Ikhelis on 20/07/2018.
//  Copyright © 2018 Aliaksandr Ikhelis. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
