//
//  KotuCollection.swift
//  JakartaLearningProject
//
//  Created by Steven Gunawan on 19/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit

class KotuCollection: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate, DiscoverDelegate {
    
    func openCity(_ city: String) {

    }
    
    weak var delegate2 : DiscoverDelegate?
    var openCity : String?
    
    let images: [UIImage] = [
        UIImage(named: "0")!,
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,
        UIImage(named: "5")!,
        UIImage(named: "6")!
    ]
    
    let name = [
        "Jakarta History Museum",
        "Bank Indonesia Museum",
        "Bank Mandiri Museum",
        "Wayang  Museum",
        "Fine Arts and Ceramic Museum",
        "Cafe Batavia",
        "Red Shop"
    ]
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kotuCell", for: indexPath) as! KotuCell
        
        cell.kotuImage.image = images[indexPath.row]
        cell.kotuLabel.text = name[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        openCity = "\(indexPath.row)"
        open()
    }
    
    
    func open(){
        delegate2!.openCity(openCity!)
    }
}
