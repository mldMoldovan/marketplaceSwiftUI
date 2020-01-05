//
//  wallet.swift
//  Marketplace
//
//  Created by Mihai Moldovan on 30/09/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit







struct wallet:Identifiable{
    
    
    // MARK: STATE
    
    let id:UUID
    var name:String
    let currency:currency
    var owner:user
    fileprivate let code:String
    fileprivate var amount:Double?
    fileprivate var history:[transaction]?
    
    let createdBy:UUID
    let createdAt:Date
    
    
    
    // MARK: GET AMOUNT
    
    
    func getAmount() -> Double{
        
        if let a = amount{
            return a
        } else {
            return 0
        }
        
    }
    
    
    
    
    
    // MARK: INIT
    
    
    init(_ name: String?, currency: currency, owner: user, code: String) {
        
        self.id = UUID()
        
        self.name = "newWallet"
        self.owner = owner
        self.currency = currency
        
        
        self.code = code
        self.amount = 0
        
        self.createdBy = owner.id
        self.createdAt = Date(timeIntervalSinceNow: 0.0)
        
        self.name = name ?? ("wallet" + self.id.uuidString.lowercased())
        
        
        
        
        self.owner.addWallets([self])
        
        
    }
    
    
    // MARK: ECHO
    
    
    mutating func echo(_ transfer: transaction){
        
        
        if transfer.people[0].id == self.owner.id{
                // send money to seller
            self.amount? += transfer.price
        }
        
        if transfer.people[1].id == self.owner.id{
            
            // get money from buyer
            self.amount? -= transfer.price
            
        }
        
        history?.append(transfer)
        
        
        owner.wallets = update()
        
        owner.event(.transfer, [transfer])
        
        
        
    }
    
    
    // MARK: UPDATE
    
    func update() -> [wallet]?{
        
        if var w = owner.wallets{
            for i in 0...w.count - 1{
                if w[i].id == self.id{
                    w.remove(at: i)
                    w.insert(self, at: i)
                    
                }
            }
            
            return w
        } else {
            print("Wallet ERR ~!> user.wallets not retrieved")
        }
        
        return nil
        
    }
    
    
    func received(_ transfer: transaction){
        if var h = history{
            h.append(transfer)
        }
    }
    
    
    // MARK: PUMP?
    
    
    func pump(_ amount: Double,_ currency: currency){
        
        
        
    }
    
    
    
    // MARK: COMPLETE
    
    
    func complete(_ transfer: transaction){
        
        
        
    }
    
    
    
}
