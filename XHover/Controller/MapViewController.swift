//
//  MapViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit
import MapKit
import CoreLocation
import AVFoundation

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    let mapView = MKMapView()
    
    var steps: [MKRoute.Step] = []
    var stepCounter = 0
    var route: MKRoute?
    var showMapRoute = false
    var navigationStarted = false
    var locaitondistance: Double = 500
    
    var speechsynthesizer = AVSpeechSynthesizer()
    
    lazy var locationManager: CLLocationManager = {
        let locationManger = CLLocationManager()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManger.delegate = self
            locationManger.desiredAccuracy = kCLLocationAccuracyBest
            handleAuthorizationStatus(locationManger: locationManger, status: CLLocationManager.authorizationStatus())
        }
        return locationManger
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
      
    }
   
    func setUpView() {
        view.addConstrainedSubviews(mapView)
        
        NSLayoutConstraint.activate([
        
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mapView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }
    
    fileprivate func handleAuthorizationStatus(locationManger: CLLocationManager, status: CLAuthorizationStatus) {
        
    }
    

}

extension ViewController: CLLocationManagerDelegate {
    
}
