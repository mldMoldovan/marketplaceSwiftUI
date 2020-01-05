//
//  MarketCell.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct MarketCell:View{
    
    
    var item: market
    var u = 0
    
    
    init(_ model: market) {
        self.item = model
        if let u = item.users{
            self.u = u.count
        }
    }
    
    
    var body: some View{
        
        HStack{
            Image(uiImage: item.logo ?? UIImage(named: "default_market")!)
                .resizable()
                .frame(width: 60, height: 60)
                .scaledToFit()
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            VStack{
                Text(item.name)
                Text("With " + String(u) + " people")
                Text("Managed by: " + item.admin.name)
            }
        }
        
    }
    
    
}




struct MarketCell_Previews: PreviewProvider {
    static var previews: some View {
        MarketCell(boiler.defaultMarket)
    }
}
