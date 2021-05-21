//
//  ViewController.swift
//  ReClean
//
//  Created by Apple on 5/21/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

class SecondViewController: UIViewController {
    
    @IBOutlet var leading: NSLayoutConstraint!
    @IBOutlet var trailing: NSLayoutConstraint!
    
    var menuOut = false
    
    
//43.220389, 76.930639
//43.233088, 76.934851
//43.202645, 76.893507
   
    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1 Esentai
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 43.220389, longitude: 76.930639)
        mapView.addAnnotation(annontation)
        
        //2 Forum
        let annontation1 = MKPointAnnotation()
        annontation1.coordinate = CLLocationCoordinate2D(latitude: 43.233088, longitude: 76.934851)
        mapView.addAnnotation(annontation1)
        
        //3 Mega
        let annontation2 = MKPointAnnotation()
        annontation2.coordinate = CLLocationCoordinate2D(latitude: 43.202645, longitude: 76.893507)
        mapView.addAnnotation(annontation2)
        
        //4 Promenade 43.240554, 76.925222
        let annontation3 = MKPointAnnotation()
        annontation3.coordinate = CLLocationCoordinate2D(latitude: 43.240554, longitude: 76.925222)
        mapView.addAnnotation(annontation3)
        
        //5 Mega park 43.264264, 76.930431
        let annontation4 = MKPointAnnotation()
        annontation4.coordinate = CLLocationCoordinate2D(latitude: 43.264264, longitude: 76.930431)
        mapView.addAnnotation(annontation4)
        
        //6 Botan sad 43.225221, 76.914374
        let annontation5 = MKPointAnnotation()
        annontation5.coordinate = CLLocationCoordinate2D(latitude: 43.225221, longitude: 76.914374)
        mapView.addAnnotation(annontation5)
        
        //7 Lenina Abay 43.243731, 76.957254
        let annontation6 = MKPointAnnotation()
        annontation6.coordinate = CLLocationCoordinate2D(latitude: 43.243731, longitude: 76.957254)
        mapView.addAnnotation(annontation6)
        
        //8 Arbat 43.258981, 76.944314
        let annontation7 = MKPointAnnotation()
        annontation7.coordinate = CLLocationCoordinate2D(latitude: 43.258981, longitude: 76.944314)
        mapView.addAnnotation(annontation7)
        
        //9 Globus 43.240488, 76.905035
        let annontation8 = MKPointAnnotation()
        annontation8.coordinate = CLLocationCoordinate2D(latitude: 43.240488, longitude: 76.905035)
        mapView.addAnnotation(annontation8)
        
        //10 Sairan 43.245890, 76.858684
        let annontation9 = MKPointAnnotation()
        annontation9.coordinate = CLLocationCoordinate2D(latitude: 43.245890, longitude: 76.858684)
        mapView.addAnnotation(annontation9)
    }
    
    @IBAction func menuTapped(_ sender: Any) {
        if menuOut == false {
            leading.constant = 80
            trailing.constant = -80
            menuOut = true
        }
        else{
          leading.constant = 0
        trailing.constant = 0
            menuOut = false
        }
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        })
        
    }
}

