//
//  TheaterCell.swift
//  iOSApp
//
//  Created by 502 on 2018. 11. 27..
//  Copyright © 2018년 502. All rights reserved.
//

import UIKit

class TheaterCell: UITableViewCell {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblAddr: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
