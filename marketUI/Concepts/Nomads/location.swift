//
//  location.swift
//  marketUI
//
//  Created by Mihai Moldovan on 16/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import MapKit






struct location{
    
    var lat:Double
    var lon:Double
    var alt:Double
    var city:String
    
    
    
    init(_ lat: Double, _ lon: Double, _ alt: Double?, _ city: String?) {
        self.lat = lat
        self.lon = lon
        
        if let a = alt{
            self.alt = a
        } else {
            self.alt = 0.0
        }
        
        if let c = city{
            self.city = c
        } else {
            self.city = "Nowhere, Nevada"
        }
    }
    
    
}
