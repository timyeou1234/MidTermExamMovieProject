//
//  TableViewCell.swift
//  MovieAppForMidterm
//
//  Created by YeouTimothy on 2016/6/17.
//  Copyright © 2016年 YeouTimothy. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var moviePicImageView: UIImageView!
    @IBOutlet weak var movieNameLable: UILabel!
    @IBOutlet weak var movieTimeLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
