//
//  MovieCell.swift
//  iOSApp
//
//  Created by 502 on 2018. 11. 26..
//  Copyright © 2018년 502. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
