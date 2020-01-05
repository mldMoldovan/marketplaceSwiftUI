//
//  market.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit

struct market:Identifiable{
    
    
    // MARK: STATE
    
    let id:UUID
    var name:String
    let admin:user
    
    var currency:currency?
    
    var logo:UIImage?
    var tax:Int?
    
    var items:[item]?
    var users:[user]?
    var banned:[user]?
    
    var background:UIImage?
    var poster:UIImage?
    
    
    let createdBy:UUID
    let createdAt:Date
    
    
    
    
    
    // MARK: SETUP AND DESIGN
    
    

    
    mutating func setup(_ tax: Int?,_ name: String?,_ currency: currency?){
        
        if let t = tax{
            self.tax = t
        }
        
        if let n = name{
            self.name = n
        }
        
        if let c = currency{
            self.currency = c
        }
        
        
    }
    
    mutating func design(_ logo: UIImage?, _ background: UIImage?, _ poster: UIImage?){
        
        if let l = logo{
            self.logo = l
        }
        
        if let b = background{
            self.background = b
        }
        
        if let p = poster{
            self.poster = p
        }
        
    }
    
    
    // MARK: USERS
    
    mutating func banUser(_ users: [user]){
        
        for u in users{
            self.banned?.append(u)
            
        }
        
    }
    
    mutating func unbanUser(_ users: [user]){
        
        
        for i in 0...users.count - 1{
            
            if var u = self.users{
            for j in 0...u.count - 1{
                if users[i].id == u[j].id{
                    u.remove(at: j)
                }
            }
            }
            
        }
        
        
    }
    
    
    mutating func addUser(_ users: [user]){
        
        if var own = self.users{
            for u in users{
                own.append(u)
            }
            
        }
        
//        for i in 0...users.count - 1{
//
//            if var _usr = self.users{
//
//                for j in 0..._usr.count - 1{
//                    if users[i].id == _usr[j].id{
//                        _usr[j] = users[i]
//                    } else {
//                        self.users?.append(users[i])
//                    }
//                }
//
//            }
//
//        }
        
    }
    
    mutating func removeUsers(_ users: [user]){
        
        for i in 0...users.count - 1{
            for j in 0...self.users!.count - 1{
                if users[i].id == self.users?[j].id{
                    self.users?.remove(at: j)
                }
            }
        }
        
        
    }
    
    
    
    // MARK: ITEMS
    
    mutating func addItems(_ items: [item]){
        
        for var i in items{
            i.market = self
            self.items?.append(i)
        }
        
    }
    
    mutating func removeItems(_ items: [item]){
        
        for i in 0...items.count - 1{
            for j in 0...self.items!.count - 1{
                if items[i].id == self.items![j].id{
                    
                    self.items![j].market = nil
                    self.items!.remove(at: j)
                    
                }
            }
        }
        
    }
    
    
    mutating func transferTo(_ items: [item],_ user: user){
        
        
    }
    
    
    // MARK: INTEGRITY
    
    
    mutating func integrity(){
        
        if var uu = self.users{
            if let bb = self.banned{
                for u in 0...uu.count - 1{
                    for b in 0...bb.count - 1{
                        if uu[u].id == bb[b].id{
                        uu.remove(at: u)
                        self.users = uu
                        }
                    }
                }
            }
        }
        
    }
    
    
    
    // MARK: INIT
    
    
    init(name: String, admin: user) {
        self.id = UUID()
        self.name = name
        self.admin = admin
        self.currency = .none
        self.items = []
        self.users = [admin]
        self.banned = []
        self.createdBy = admin.id
        self.createdAt = Date(timeIntervalSinceNow: 0.0)
    }
    
    
    
}
