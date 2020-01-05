//
//  core.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI


class core{
    
    
    static let debug = false
    static let logs = false
    static let main = LoginView()
    
    
    static var logCounter = 0
    
    static let w = UIScreen.main.bounds.width
    static let h = UIScreen.main.bounds.height
    
    
    

    
    
}


// MARK: ENUMS


enum userEvent{
    
    case messsage, transfer, notification
    
}

enum pillar{
    
    case User, Rating, Item, Wallet, Market
    
}

enum currency:StringLiteralType{
    
    case euro, dollar, pound, ruble, bitcoin
    
}


enum itemType{
    
    case drugs, weapons, pussy, pyro, meds, ammo, cars, planes, heli, tech, blueprints, docs, IDs, counterfeits, niet
    
}


enum itemStatus{
    
    case created, published, commited, sold
    
}

enum notificationType{
    
    case miel, turma, cioban
    
}

enum geoLayers{
    
    case town, division, planet, system, arm, galaxy, cluster
    
}

enum negociationStatus{
    
    case pending, started, dispute, iterrupted, closed, solved
    
}
