//
//  ExploreViewController.swift
//  JakartaLearningProject
//
//  Created by Steven Gunawan on 18/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var selectedData: Int = 0
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        
        let  image = images[indexPath.item]
        cell.imageView.image = image
        cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
        
        return cell
    }
    
    @objc func tap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: self.collectionView)
        let indexPath = self.collectionView.indexPathForItem(at: location)
        
        if let index = indexPath {
            print("Got clicked on index: \(index)")
            
            if index == [0,0]{
                print("yes")
                selectedData = 0
                self.performSegue(withIdentifier: "exploreSegue", sender: self)
            } else if index == [0,1] {
                selectedData = 1
                self.performSegue(withIdentifier: "exploreSegue", sender: self)
            } else if index == [0,2] {
                selectedData = 2
                self.performSegue(withIdentifier: "exploreSegue", sender: self)
            } else if index == [0,3] {
                selectedData = 3
                self.performSegue(withIdentifier: "exploreSegue", sender: self)
            } else if index == [0,4] {
                selectedData = 4
                self.performSegue(withIdentifier: "exploreSegue", sender: self)
            } else if index == [0,5] {
                selectedData = 5
                self.performSegue(withIdentifier: "exploreSegue", sender: self)
            } else if index == [0,6] {
                selectedData = 6
                self.performSegue(withIdentifier: "exploreSegue", sender: self)
            }
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfColumns: CGFloat = 2
        let width = collectionView.frame.size.width
        let xInsets: CGFloat = 10
        let cellSpacing: CGFloat = 5
        
        return CGSize(width: (width / numberOfColumns) - (xInsets + cellSpacing), height: (width / numberOfColumns) - (xInsets + cellSpacing))
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let images: [UIImage] = [
        UIImage(named: "0")!,
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,
        UIImage(named: "5")!,
        UIImage(named: "6")!
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "exploreSegue" {
            let destination = segue.destination as! InformationController
            destination.selectedIndex = selectedData
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
}
