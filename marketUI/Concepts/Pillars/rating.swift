//
//  rating.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit



struct rating:Identifiable{
    
    
    // MARK: STATE
    
    let id:UUID
    let people:[user]
    let rate:Int
    let comment:String
    let title:String
    
    
    let createdBy:UUID
    let createdAt = Date(timeIntervalSinceNow: 0.0)
    
    
    
    // MARK: INIT
    
    
    init(_ people: [user], rate: Int, comment: String, title: String) {
        self.id = UUID()
        self.rate = rate
        self.comment = comment
        self.people = people
        self.title = title
        self.createdBy = people[0].id
        
    }
    
    
    func echo(){
        
        
        
    }
    
}
