//
//  DiscoverViewController.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 19/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit
protocol DiscoverDelegate : AnyObject{
    func openCity(_ city : String)
}

class DiscoverViewController: UIViewController, DiscoverDelegate {
    
    var tableCellSelected:Int = 0
    var segueIndex:Int = 0

    @IBOutlet weak var collectionViewOutlet: KotuCollection!
    
    var data = loadData()
    var selectedForMaps: String = ""
    var selectedCollection: Int = 0
    var tempString:String = ""
    @IBOutlet weak var tableView : UITableView!
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
        tableView.delegate = self
        tableView.dataSource = self
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
        else if segue.identifier == "discoverInformationSegue" {
            let destination = segue.destination as! DiscoverInformationController
            destination.selectedIndex = segueIndex
        }
    }
    
    func openCity(_ city: String) {
        print(#function)
        tempString = city
        print(tempString)
        if segueIndex >= 0 {
            selectIndex()
            performSegue(withIdentifier: "discoverInformationSegue", sender: self)
        }
    }
    
    func selectIndex() {
        for index in 0...data.count-1 {
            if tempString == "\(index)" {
                segueIndex = index
            }
        }
    }
    
}

extension DiscoverViewController :UITableViewDelegate, UITableViewDataSource{
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 2
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let  row = indexPath.row
            
            if  row == 0 {
                let  cell = tableView.dequeueReusableCell(withIdentifier: "kotutableviewcell") as! KotuTableViewCell
                cell.selectionStyle = .none
                cell.collectionOutlet.delegate2 = self
                return cell
            } else {
                let  cell = tableView.dequeueReusableCell(withIdentifier: "jakpustableviewcell") as! JakpusTableViewCell
                cell.selectionStyle = .none
                return cell
            }
        }
        
        @objc func tap(_ sender: UITapGestureRecognizer) {
            print("selected")
        }
        
}
