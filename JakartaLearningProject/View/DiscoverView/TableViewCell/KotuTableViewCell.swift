//
//  KotuTableViewCell.swift
//  JakartaLearningProject
//
//  Created by Steven Gunawan on 19/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit

class KotuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionOutlet: KotuCollection!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

