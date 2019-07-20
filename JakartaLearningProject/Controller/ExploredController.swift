//
//  ExploreViewController.swift
//  JakartaLearningProject
//
//  Created by Steven Gunawan on 18/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var unlockedImages: [UIImage] = []
    var lockedImages: [UIImage] = []
    
    var selectedData: Int = 0
    var selectedArray: [Int] = []
    var data = loadData()
    
    //Collection View Create
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return unlockedImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        let  image = unlockedImages[indexPath.item]
        cell.imageView.image = image
        cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfColumns: CGFloat = 2
        let width = collectionView.frame.size.width
        let xInsets: CGFloat = 10
        let cellSpacing: CGFloat = 5
        
        return CGSize(width: (width / numberOfColumns) - (xInsets + cellSpacing), height: (width / numberOfColumns * 1.5) - (xInsets + cellSpacing))
    }
    
    //Collection View TapGesture
    @objc func tap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: self.collectionView)
        let indexPath = self.collectionView.indexPathForItem(at: location)
        
        if let index = indexPath {
            print("Explored index: \(index)")
            
            if index == [0,0]{
                selectedData = selectedArray[0]
            } else if index == [0,1] {
                selectedData = selectedArray[1]
            } else if index == [0,2] {
                selectedData = selectedArray[2]
            } else if index == [0,3] {
                selectedData = selectedArray[3]
            } else if index == [0,4] {
                selectedData = selectedArray[4]
            } else if index == [0,5] {
                selectedData = selectedArray[5]
            } else if index == [0,6] {
                selectedData = selectedArray[6]
            }
            self.performSegue(withIdentifier: "exploreSegue", sender: self)
        }
    }
    
    //Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "exploreSegue" {
            let destination = segue.destination as! InformationController
            destination.selectedIndex = selectedData
        }
    }
    
    //Separate locked & unlocked
    func setupData() {
        for index in 0...data.count-1 {
            if data[index].isUnlocked == false {
                lockedImages.append(UIImage(named: "\(index)")!)
            } else if data[index].isUnlocked == true {
                unlockedImages.append(UIImage(named: "\(index)")!)
                selectedArray.append(index)
                print("Unlocked = \(data[index].title)")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        setupData()
//        print(" ExploredTest = \(data[0].isLocked)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
}
