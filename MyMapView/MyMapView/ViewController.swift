//
//  ViewController.swift
//  MyMapView
//
//  Created by Auriga on 27/04/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let intialLocation = CLLocation(latitude: 26.9124, longitude: 75.7873)
        
        mapView.centerToLocation(intialLocation)
        
        
        let artwork = Artwork(
            title: "King David Kalakaua",
            locationName: "Waikiki Gateway Park",
            discipline: "Sculpture",
            coordinate: CLLocationCoordinate2D(latitude: 26.9124, longitude: 75.7873))
        mapView.addAnnotation(artwork)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
}
    private extension MKMapView {
        func centerToLocation( _ location: CLLocation, regionRadius: CLLocationDistance = 1000)
        {
            let coordinateRegion = MKCoordinateRegion(center: location.coordinate,  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
            
            setRegion(coordinateRegion, animated: true)
        }
    }




