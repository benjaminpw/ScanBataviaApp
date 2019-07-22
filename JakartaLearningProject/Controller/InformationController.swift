//
//  InformationController.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 15/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit

class InformationController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tipsLabel: UILabel!
    @IBOutlet weak var historyLabel: UILabel!
    
    var data = loadData()
    var selectedData:PlaceData? = nil
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(data[selectedIndex].title)
        image.image = UIImage(named: data[selectedIndex].image)
        titleLabel.text = data[selectedIndex].title
        tipsLabel.text = data[selectedIndex].tips
        historyLabel.text = data[selectedIndex].summary
        self.navigationController?.setNavigationBarHidden(false, animated: true)
//        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        self.navigationController?.navigationBar.topItem?.title = "Profile Settings"
//    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
