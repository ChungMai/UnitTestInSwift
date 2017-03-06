//
//  Location.swift
//  ToDo
//
//  Created by MacMini on 3/6/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation
import CoreLocation
struct Location : Equatable{
    let name: String
    let coordinate: CLLocationCoordinate2D?
    init(name: String,
         coordinate: CLLocationCoordinate2D? = nil) {
        self.name = ""
        self.coordinate = coordinate
    }
}

func ==(lhs: Location, rhs: Location) -> Bool {
    if lhs.coordinate?.latitude != rhs.coordinate?.latitude {
        return false
    }
    if lhs.coordinate?.longitude != rhs.coordinate?.longitude {
        return false
    }
    return true
}
