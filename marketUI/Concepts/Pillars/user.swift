//
//  user.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit
import MapKit









struct user:Identifiable{
    
    
    // MARK: STATE
    
    let id:UUID
    
    let name:String
    let fullname:String
    
    
    // Premium
    var birthday:Date?
    var location:MKMapPoint?
    // >>
    
    var images:[UIImage]?
    
    var markets:[market]?
    var items:[item]?
    var ratings:[rating]?
    var wallets:[wallet]?
    
    var messages:[message]?
    
    
    var createdAt:UUID?
    var lastLogin:UUID?
    var logins:[String]?
    
    
    
    
    // MARK: AVG
    
    
    func getRating() -> Float{
        
        var c = 0
        var s = 0
        
        if let r = self.ratings{
            for i in r{
                c += 1
                s += i.rate
            }
            return Float(s/c)
        }
        
        return 0
        
    }
    
    // MARK: AGE
    
    
    func getAge() -> Int{
        
        if let b = birthday{
            return b.age
        }
        
        return 0
        
    }
    
    
    
    // MARK: INIT
    
    
    init(_ name: String,_ fullname: String) {
        self.id = UUID()
        self.name = name
        self.fullname = fullname
        self.birthday = nil
        self.location = nil
        self.images = []
        self.markets = []
        self.items = []
        self.ratings = []
        self.wallets = []
    }
    
    
    func json() //-> [String:Any]{
    {
        
        //return nil
        
    }
    
    
    
    
    
    // MARK: MUTATIONS
    
    mutating func addImages(_ images: [UIImage]){
        
        for i in 0...images.count - 1{
            
            self.images?.append(images[i])
            
        }
        
    }
    
    mutating func addMarkets(_ markets: [market]){
        
        
        for m in 0...markets.count - 1{
            
            self.markets?.append(markets[m])
            
        }
        
        
    }
    
    mutating func addItems(_ items: [item]){
        
        
    }
    
    mutating func addRatings(_ ratings: [rating]){
        
        for r in 0...ratings.count - 1{
            self.ratings?.append(ratings[r])
        }
        
    }
    
    mutating func addWallets(_ wallets: [wallet]){
        
        for w in 0...wallets.count - 1{
            self.wallets?.append(wallets[w])
        }
        
    }
    
    
    // MARK: EVENT HANDLING
    
    mutating func event(_ event: userEvent, _ data: [Any]?){
        
        switch event {
            case .messsage:
                if let d = data{
                    for e in d{
                        messages?.append(e as! message)
                    }
            }
            case .transfer:
                if let d = data{
                    for e in d{
                        let ec = e as! transaction
                        if let w = wallets{
                            for i in 0...w.count - 1{
                                if w[i].getAmount() > ec.price{
                                    w[i].received(ec)
                                } else {
                                    print("No money in this wallet senor")
                                }
                            }
                        }
                    }
            }
            case .notification:
                print("Poo")

        }
        
    }
    
    
    
}
