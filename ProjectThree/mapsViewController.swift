//
//  mapsViewController.swift
//  ProjectThree
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class mapsViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.361888 , longitude: -158.055725)
    let regionRadius: CLLocationDistance = 1000
    
    
    @IBOutlet var mapsTabLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Maps"
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Aloha Salads", type: "Organic", coordinate: CLLocationCoordinate2D(latitude: 21.3314, longitude: 158.0916))
        let restaurantTwo = Restaurant(title: "DB Grill", type: "Korean Fusion", coordinate: CLLocationCoordinate2D(latitude: 21.3300, longitude: 158.0945))
        let restaurantThree = Restaurant(title: "Gyu Kaku", type: "Japanese BBQ", coordinate: CLLocationCoordinate2D(latitude: 21.3308, longitude: 158.0940))
        let restaurantFour = Restaurant(title: "Genki Sushi", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.3305, longitude: 158.0901))
        let restaurantFive = Restaurant(title: "Kazoku Sushi", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.3288, longitude: 158.0869))
        let restaurantSix = Restaurant(title: "Sushi Bay", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.3398, longitude: 158.0782))
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius); mapView.setRegion(coordinateRegion, animated:  true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
