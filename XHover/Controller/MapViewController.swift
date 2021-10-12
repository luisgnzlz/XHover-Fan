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

class MapViewController: UIViewController, MKMapViewDelegate {
    
    let mapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var steps: [MKRoute.Step] = []
        var stepCounter = 0
        var route: MKRoute?
        var showMapRoute = false
        var navigationStarted = false
        var locationDistance: Double = 500
        
        var speechSynth = AVSpeechSynthesizer()
        
        lazy var locationManager: CLLocationManager()
        
        mapView.mapType = MKMapType.standard
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        
        setUpView()
        
        // Or, if needed, we can position map in the center of the view
        mapView.center = view.center
    }
    
    func setUpView() {
        view.addConstrainedSubviews(mapView)
        
        NSLayoutConstraint.activate([
        
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mapView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }
    
}
