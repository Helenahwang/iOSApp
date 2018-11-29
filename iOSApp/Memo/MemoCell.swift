//
//  MemoCell.swift
//  iOSApp
//
//  Created by 502 on 2018. 11. 29..
//  Copyright © 2018년 502. All rights reserved.
//

import UIKit

class MemoCell: UITableViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var contents: UILabel!
    @IBOutlet weak var regdate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
