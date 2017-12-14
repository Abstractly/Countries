//
//  CountryTableViewCell.swift
//  123
//
//  Created by Khaled Habbal on 2017-12-14.
//  Copyright © 2017 Khaled Habbal. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
