//
//  DiscoverInformationController.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 20/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit

class DiscoverInformationController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    
    var selectedIndex: Int = 0
    var data = loadData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(selectedIndex)
        image.image = UIImage(named: data[selectedIndex].image)
        titleLabel.text = data[selectedIndex].title
        informationLabel.text = data[selectedIndex].information

        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
