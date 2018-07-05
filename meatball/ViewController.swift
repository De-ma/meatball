//
//  ViewController.swift
//  meatball
//
//  Created by Dema Abu Adas on 2018-07-03.
//  Copyright © 2018 Dema Abu Adas. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        startReceivingVisitChanges()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func startReceivingVisitChanges() {
        let locationManager = CLLocationManager()
        var currentLocation: CLLocation?
        locationManager.requestWhenInUseAuthorization()

        if (CLLocationManager.authorizationStatus() != .denied) {
            currentLocation = locationManager.location
        }

        latLabel.text = "\(String(describing: currentLocation?.coordinate.latitude))"
        longLabel.text = "\(String(describing: currentLocation?.coordinate.longitude))"
    }
}

