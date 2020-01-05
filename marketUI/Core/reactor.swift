//
//  reactor.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


class reactor{
    
    
    static var status = "cold"
    
    
    
    // MARK: RATINGS
    
    
    static func randRatings(_ users: [user]) -> [rating]{
        
        
        var out:[rating] = []
        
        
        
        for i in 0...users.count - 2{
            
            let l = Int.random(in: 6...9)
            
            for j in 0...l{
                let r = rating([users[i],users[i + 1]], rate: 3, comment: "Rating is gud. ratin iz life " + String(j + 1), title: "life nigga " + String(j + 1))
                out.append(r)
            }
        }
        
        
        
        
        
        return out
        
    }
    
    
    static func feedRatings(_ data: [[String]], _ avg: Double?){
        
    }
    
    
    
    // MARK: WALLETS
    
    
    static func randWallets(_ users: [user]) -> [wallet]{
        
        var out:[wallet] = []
        
        for i in 0...users.count - 1{
            
            let l = Int.random(in: 3...6)
            var c:currency
            
            
            
            for _ in 0...l{
                 switch Int.random(in: 1...5) {
                     case 1:
                         c = .euro
                     case 2:
                         c = .dollar
                     case 3:
                         c = .pound
                     case 4:
                         c = .ruble
                     case 5:
                         c = .bitcoin
                     default:
                         c = .dollar
                 }
                let w = wallet("wallet" + String(i), currency: c, owner: users[i], code: "1234")
                out.append(w)
            }
            
        }
        
        return out
        
        
    }
    
    func feedWallets(_ data: [[String]], _ pref: currency?){
        
        
    }
    
    
    // MARK: ITEMS
    
    
    static func randItems() -> [item]{
        
        let out:[item] = []
        
        
        return out
        
    }
    
    func feedItems(_ data: [[String]]){
        
    }
    
    // MARK: MARKETS
    
    static func randMarkets() -> [market]{
        
        let out:[market] = []
        
        
        
        
        return out
        
    }
    
    
    
    // MARK: USERS
    
    
    static func randUsers(_ names: [String],_ surnames: [String]) -> [user]{
        
        var out:[user] = []
        
        
        
        for c in 0...names.count - 1{
            out.append(user(reactor.generateNames(boiler.names, boiler.surnames)[c], surnames[c] + " " + names[c]))
        }
        
        
        
        return out
        
    }
    
    
    // MARK: NAMES
    
    static func generateNames(_ names: [String],_ surnames: [String]) -> [String]{
        
        var out:[String] = []
        
        for c in 0...names.count - 1{
            let n = surnames[c].lowercased() + names[c].capitalized
            out.append(n)
        }
        
        
        return out
        
    }
    
    
    
    
    // MARK: START REACTION
    
    
    
    static func start(){
        
        
        boiler.users = reactor.randUsers(boiler.names, boiler.surnames)
        boiler.ratings = reactor.randRatings(boiler.users)
        boiler.wallets = reactor.randWallets(boiler.users)
        
        reactor.status = "ignited"
        
    }
    
    
    static func spit(){
        
        print("_> 1x00u <_" + String(boiler.users.count))
        print("_> 1x01R <_" + String(boiler.ratings.count))
        print("_> 1x02w <_" + String(boiler.wallets.count))
        
    }
    
    
    
}
