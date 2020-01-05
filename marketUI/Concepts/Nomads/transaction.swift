//
//  transaction.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 07/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit


struct transaction:Identifiable{
    
    // MARK: STATE
    
    let people:[user]
    let price:Double
    let currency:currency
    let id:UUID
    let tstamp:Date
    var complete = false
    
    
    var item:AnyObject?
    
    
    let createdAt = Date(timeIntervalSinceNow: 0.0)
    
}
