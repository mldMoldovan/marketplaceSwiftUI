//
//  boiler.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI



class boiler{
    
    
    // MARK: FREE DEFAULTS
    
    
    // pillars
    static let defaultUser = user("Default", "Defaultescu")
    static let defaultUserx = user("Default", "Scarlatescu")
    static let defaultRating = rating([boiler.defaultUser,boiler.defaultUserx], rate: 3, comment: "Buna ziua coometre", title: "Salam la plic !")
    static var defaultItem = item("Parizer la plic", price: 300.0, currency: .euro, seller: boiler.defaultUser, images: [(_imgs["bkg"])!!])
    static let defaultWallet = wallet("PortoSalam", currency: .bitcoin, owner: boiler.defaultUser, code: "1234")
    static let defaultMarket = market(name: "Salam", admin: boiler.defaultUserx)
    
    
    // nomads
    
    static let defaultTransfer = transaction(people: [boiler.defaultUser, boiler.defaultUserx], price: 30.5, currency: .euro, id: UUID(), tstamp: Date.init(timeIntervalSinceNow: 0.0))
    static let defaultTalk = negotiation(people: [boiler.defaultUser, boiler.defaultUserx], prices: [30.5,33.5], confirmed: false)
    
    
    
    
    // MARK: USERS
    
    static var users:[user] = []
    
    static var vsers:[user] = [
    
        user("sickRanchez", "Sickonald Ranchezio Montoya Ramires-Escobar"),
        user("toniCipriani", "Antonio Ciomaggo Ciprani"),
        user("andrewRyan", "Andrew Reginald Walter Ryan"),
        user("becaliForta", "Gheorghe Razboinicoo Becali"),
        user("georgeTufish", "George Dublu W Tufish"),
        user("faneSpoitoru", "Stefan Spoitoreanu"),
        user("georgeTufish", "George Dublu W Tufish"),
        user("georgeTufish", "George Dublu W Tufish"),
        user("georgeTufish", "George Dublu W Tufish"),
        user("georgeTufish", "George Dublu W Tufish"),
        user("sickRanchez", "Sickonald Ranchezio Montoya Ramires-Escobar"),
        user("toniCipriani", "Antonio Ciomaggo Ciprani"),
        user("donaldTrump", "Andrew Reginald Walter Ryan"),
        user("xiJingping", "Gheorghe Razboinicoo Becali"),
        user("adolphMerkel", "Adolph Hamal Ibric Merkel"),
        user("leNapoleon", "Bonapartio Napoleonovici"),
        user("leCroissant", "Jean Lemiel Croissant"),
        user("andrewRyan", "Andrew Reginald Walter Ryan"),
        user("becaliForta", "Gheorghe Razboinicoo Becali"),
        user("georgeTufish", "George Dublu W Tufish"),
        
    ]
    
    
    static var ratings:[rating] = []
    static var items:[item] = []
    static var transfers:[transaction] = []
    static var wallets:[wallet] = []
    static var markets:[market] = []
    
    
    
    
    
    static func fill(){
        
        
        
    }
    
    static let marketNames:[String] = [
    
        "Arcadia Central",
        "Mielul Sfant",
        "Alham Dulilah",
        "Transfere Mocca",
        "Sfantoo Jean",
        "Adriaaaaaan",
        "Salam de rata",
    
    ]
    
    static let names:[String] = [
    
        "Frank",
        "Somal",
        "Arborigeniu",
        "Transpher",
        "Abdullah",
        
        "Parteed",
        "Jaheed",
        "Takbeer",
        "Sapheer",
        "Sandall",
        
        "Artromat",
        "Scrampeer",
        "Sczkhechpeer",
        "Satirburger",
        "Fransoa",
        
        "Groenland",
    
    ]
    
    
    static let surnames:[String] = [
    
        "Inocentiu",
        "Sumoiliescu",
        "Trandafir",
        "Samuel",
        "Arteed",
        
        "Carbeed",
        "Carbiddovitch",
        "Polo",
        "Addams",
        "Tractor",
        
        "Parizescu",
        "Gratarescu",
        "Hamuzantescu",
        "Cristoforcolumbescu",
        "Abatorescu",
        
        "Crematorescu",
        
    
    ]
    

    
    
    // MARK: TEST THIS COMRADE
    
    static func JSONStringify(value: AnyObject,prettyPrinted:Bool = false) -> String{
        
        let options = prettyPrinted ? JSONSerialization.WritingOptions.prettyPrinted : JSONSerialization.WritingOptions(rawValue: 0)
       
        
        if JSONSerialization.isValidJSONObject(value) {
            
            do{
                let data = try JSONSerialization.data(withJSONObject: value, options: options)
                if let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue) {
                    return string as String
                }
            }catch {
                
                print("error")
                //Access error here
            }
            
        }
        return "poo"
        
    }
    
    
    
    
}
