//
//  DiscoverInformationController.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 20/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit
import MapKit

class DiscoverInformationController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var toDoLabel: UILabel!
    
    @IBAction func locationButton(_ sender: Any) {
        var  lattitude = Float()
        var longitude = Float()
        lattitude = data[selectedIndex].latitude
        longitude = data[selectedIndex].longitude
        
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2D(latitude: CLLocationDegrees(lattitude), longitude: CLLocationDegrees(longitude))
        
        let regionSpan =  MKCoordinateRegion.init(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        
        let options =  [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placeMark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placeMark)
        
        mapItem.openInMaps(launchOptions: options)
        
    }
    
    var selectedIndex: Int = 0
    var data = loadData()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //        print(selectedIndex)
        
        image.image = UIImage(named: data[selectedIndex].image)
        titleLabel.text = data[selectedIndex].title
        informationLabel.text = data[selectedIndex].information
        toDoLabel.text = data[selectedIndex].todo
        toDoLabel.sizeToFit()
        informationLabel.sizeToFit()
        
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
}
