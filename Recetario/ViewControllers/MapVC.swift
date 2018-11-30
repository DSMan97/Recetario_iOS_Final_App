//
//  MapVC.swift
//  Recetario
//
//  Created by GUILLERMO CRESPO AGUAYO on 30/11/18.
//  Copyright © 2018 GUILLERMO CRESPO AGUAYO. All rights reserved.
//

import MapKit
class MapVC: UIViewController {
    
    
    @IBOutlet weak var mMap:MKMapView!
    internal var mLocationRecipe: CLLocation?
    
    
    convenience init(lat: Double,  lng: Double){
        self.init()
        mLocationRecipe = CLLocation(latitude: lat, longitude: lng)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "RecipeOrigin"
        let annotation = MKPointAnnotation()
        annotation.coordinate = (mLocationRecipe?.coordinate)!
        mMap.addAnnotation(annotation)
        let regionToShow = MKCoordinateRegionMakeWithDistance((mLocationRecipe?.coordinate)!, 2000, 2000)
        mMap.setRegion(regionToShow, animated: true)
    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
