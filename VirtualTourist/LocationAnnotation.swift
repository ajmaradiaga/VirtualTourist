//
//  LocationAnnotation.swift
//  VirtualTourist
//
//  Created by Antonio Maradiaga on 10/04/2015.
//  Copyright (c) 2015 Antonio Maradiaga. All rights reserved.
//

import UIKit
import MapKit

class LocationAnnotation: NSObject, MKAnnotation {
    var location : Location!
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake(location.latitude, location.longitude)
    }
    
    var title: String {
        return location.name!
    }
    
    init(annotationLocation:Location) {
        location = annotationLocation
        CLLocationCoordinate2DMake(location.latitude, location.longitude)
    }
    
    func setCoordinate(newCoordinate: CLLocationCoordinate2D) {
        location.latitude = newCoordinate.latitude
        location.longitude = newCoordinate.longitude
        location.updateLocationName()
        CoreDataStackManager.sharedInstance().saveContext()
    }
    
    
    
}
