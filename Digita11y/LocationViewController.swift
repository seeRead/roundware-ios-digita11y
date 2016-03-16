//
//  LocationViewController.swift
//  Digita11y
//
//  Created by Christopher Reed on 2/29/16.
//  Copyright © 2016 Roundware. All rights reserved.
//

import UIKit
import CoreLocation
import RWFramework
class LocationViewController: BaseViewController, RWFrameworkProtocol {
    
    // MARK: Actions and Outlets
    
    @IBAction func next(sender: AnyObject) {
        let rwf = RWFramework.sharedInstance
        if !rwf.requestWhenInUseAuthorizationForLocation() || CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse {
            self.performSegueWithIdentifier("ExhibitSegue", sender: nil)
        }
    }

    @IBAction func noThanks(sender: AnyObject) {
        //No Thanks
        self.performSegueWithIdentifier("ExhibitSegue", sender: nil)
    }
    
    // MARK: View
    
    override func viewDidLoad() {
        //TODO skip this view controller if permission available
        super.viewDidLoad()
        super.view.addBackground("bg-green.png")
    }
    
    // MARK: RWFramework Protocol

    func rwLocationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus)
    {
        self.performSegueWithIdentifier("ExhibitSegue", sender: nil)
    }
}