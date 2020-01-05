//
//  XTCell.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct XTCell:View{
    
    
    var item: AnyObject?
    var v: Any?
    
    
    init(_ model: AnyObject) {
        self.item = model
        
        
        
        if let u = model as? user{
            print(u)
            v = UserCell(u)
        }
        
        if let r = model as? rating{
            print(r)
            v = RatingCell(r)
        }
        
        if let i = model as? item{
            print(i)
            v = ItemCell(i)
        }
        
        if let w = model as? wallet{
            print(w)
            v = WalletCell(w)
        }
        
        if let m = model as? market{
            print(m)
            v = MarketCell(m)
        }
        
    }
    
    
    var body: some View{
        
        Text("Miel")
        
    }
    
    
}




struct XTCell_Previews: PreviewProvider {
    static var previews: some View {
        XTCell(boiler.defaultRating as AnyObject)
    }
}
