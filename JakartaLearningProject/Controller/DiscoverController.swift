//
//  MapController.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 15/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit

class MapController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    var data = loadData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 4.0
        data[0].isLocked = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
