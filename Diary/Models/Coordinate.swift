//
//  Coordinate.swift
//  Diary
//
//  Created by Cristian Sedano Arenas on 30/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import Foundation
import CoreLocation

// The coordinate type
struct Coordinate {
    let latitude: Double
    let longitude: Double
    
    init(location: CLLocation) {
        self.latitude = location.coordinate.latitude
        self.longitude = location.coordinate.longitude
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}
