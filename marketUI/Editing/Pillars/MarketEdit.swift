//
//  MarketCreate.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct MarketEdit:View{
    
    
    
    var item:market
    var changed = false
    
    // >>~_?
    var saved = false
    
    
    init(_ model: market) {
        self.item = model
    }
    
    
    var body: some View{
        
        Text("WIP")
        
    }
    
    
}




struct marketCreate_Previews: PreviewProvider {
    static var previews: some View {
        MarketEdit(boiler.defaultMarket)
    }
}
