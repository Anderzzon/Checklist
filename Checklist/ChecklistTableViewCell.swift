//
//  ChecklistTableViewCell.swift
//  Checklist
//
//  Created by Erik Andersson on 2020-01-22.
//  Copyright © 2020 Erik Andersson. All rights reserved.
//

import UIKit

class ChecklistTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkmarkLabel: UILabel!
    @IBOutlet weak var todoTextLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
