//
//  DiscoverViewController.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 19/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit
//protocol DiscoverDelegate : AnyObject{
//    func openCity(_ city : String)
//}

class DiscoverViewController: UIViewController/*, DiscoverDelegate*/ {
    
    var data = loadData()
    var selectedForMaps: String = ""
    @IBOutlet weak var tableView: DiscoverTable!
    @IBAction func kotaTuaButton(_ sender: Any) {
        selectedForMaps = "KotaTuaMap"
        if selectedForMaps == "KotaTuaMap" {
            performSegue(withIdentifier: "discoverMapSegue", sender: self)
        }
    }
    @IBAction func monasButton(_ sender: Any) {
        selectedForMaps = "MonasMap"
        if selectedForMaps == "MonasMap" {
            performSegue(withIdentifier: "discoverMapSegue", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    //Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "discoverMapSegue" {
            let destination = segue.destination as! MapController
            destination.selectedMap = selectedForMaps
        }
    }
    
//    func openCity(_ city: String) {
//
//        performSegue(withIdentifier: "discoverMapSegue", sender: self)
//    }
}

//extension DiscoverViewController :UITableViewDelegate, UITableViewDataSource{
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "kotutableviewcell") as! KotuTableViewCell
//        cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
//        return cell
//    }
//
//    //Collection View TapGesture
//    @objc func tap(_ sender: UITapGestureRecognizer) {
//        print("Clicked")
////        performSegue(withIdentifier: "discoverMapSegue", sender: self)
//    }
//
//    //Segue
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "discoverMapSegue" {
//            let destination = segue.destination as! MapController
//            destination.selectedMap = 0
//        }
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "kotutableviewcell") as! KotuTableViewCell
//        cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
//        performSegue(withIdentifier: "discoverMapSegue", sender: cell)
//        print("selected")
//    }
//}
