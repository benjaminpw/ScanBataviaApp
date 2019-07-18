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
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var data = loadData()
//    var data:Data
    var selectedData:Data? = nil
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(data[selectedIndex].title)
        image.image = UIImage(named: data[selectedIndex].image)
        titleLabel.text = data[selectedIndex].title
        descriptionLabel.text = data[selectedIndex].description
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func backButton(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
