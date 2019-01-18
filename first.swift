//
//  first.swift
//  TableViewCustomCellSwift
//
//  Created by MAC OS on 5/31/17.
//  Copyright © 2017 MAC OS. All rights reserved.
//

import UIKit

class first: UITableViewCell {

    @IBOutlet weak var imgv: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
