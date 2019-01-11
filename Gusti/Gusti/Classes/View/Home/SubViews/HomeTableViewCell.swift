//
//  HomeTableViewCell.swift
//  Gusti
//
//  Created by Gusti Hidayat on 11/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var tilteMovie: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
