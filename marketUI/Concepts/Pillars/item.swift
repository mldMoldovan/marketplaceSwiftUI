//
//  item.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit









struct item:Identifiable{
    
    
    
    // MARK: STATE
    
    
    let id:UUID
    let name:String
    var description:String?
    
    
    let type:itemType?
    
    var market:market?
    
    
    var people:[user]
    
    var queue:[user]?
    
    let price:Double
    let currency:currency
    let images:[UIImage]
    var status:itemStatus
    
    let createdBy:UUID
    let createdAt:Date
    
    
    
    
    
    // MARK: INIT
    
    
    init(_ name: String, price: Double, currency: currency, seller: user, images: [UIImage]) {
        
        self.id = UUID()
        self.name = name
        self.price = price
        self.people = [seller]
        self.currency = currency
        self.type = .niet
        self.images = images
        self.status = .created
        self.createdBy = seller.id
        self.createdAt = Date(timeIntervalSinceNow: 0.0)
    }
    
    
    
    mutating func setMarket(_ market: market){
        self.market = market
    }
    
    
    
    // MARK: MUTANTS
    
    
    
    mutating func commit(_ buyer: user, _value: Double){
        
        people.append(buyer)
        
        status = .commited
        
    }
    
    mutating func buy() -> transaction{
        
        status = .sold
        
        let t = transaction(people: people, price: price, currency: currency, id: UUID(), tstamp: Date.init(timeIntervalSinceNow: 0.0))
        
        for o in people{
            if var p = o.wallets{
                p[0].echo(t)
            }
        }
        
        
        
        return t
        
    }
    
    
}
