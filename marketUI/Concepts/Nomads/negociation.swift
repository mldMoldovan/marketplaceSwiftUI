//
//  negociation.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 07/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit





struct negotiation{
    
    // MARK: STATE
    
    let people:[user]
    let prices:[Double]
    let confirmed:Bool
    
    
    let createdAt = Date(timeIntervalSinceNow: 0.0)
    
}
