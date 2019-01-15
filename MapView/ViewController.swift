//
//  ViewController.swift
//  MapView
//
//  Created by Dalvin on 1/14/19.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet var Map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        var location = CLLocationCoordinate2DMake(40.706268, -74.176811)
        
    
        var span = MKCoordinateSpan.init(latitudeDelta: 0.2, longitudeDelta: 0.2)
        
        var region = MKCoordinateRegion(center:location, span: span)
        Map.setRegion(region, animated: true)
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Newark Airport"
        annotation.subtitle = "Terminal C"
        Map.addAnnotation(annotation)
        
       
    }


}

