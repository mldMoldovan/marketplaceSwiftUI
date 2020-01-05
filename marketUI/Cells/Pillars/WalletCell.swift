//
//  WalletCell.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct WalletCell:View{
    
    
    var item: wallet
    var c = ""
    var r = ""
    
    
    init(_ model: wallet) {
        self.item = model
        
        switch item.currency {
            case .euro:
               c = "Euro"
               r = "eur_icon"
            case .dollar:
               c = "Dollar"
               r = "dollar_icon"
            case .pound:
               c = "Pound"
               r = "pound_icon"
            case .ruble:
               c = "Ruble"
               r = "ruble_icon"
            case .bitcoin:
               c = "Bitcoin"
               r = "btc_icon"
        }
    }
    
    
    
    
    var body: some View{
        
        HStack{
            Image(uiImage: UIImage(named: r)!)
               .resizable()
               .frame(width: 60, height: 60)
               .scaledToFit()
               .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            VStack{
                Text(item.name + ", " + item.owner.fullname)
                    .bold()
                    .italic()
                    .foregroundColor(.gray)
                    .frame(width: core.w - 120, height: 30, alignment: .center)
                Text(String(item.getAmount()) + " << $ >> " + c)
                    .bold()
                    .frame(width: core.w - 120, height: 30, alignment: .center)
                //Spacer()
            }
        }
        
    }
    
    
}




struct WalletCell_Previews: PreviewProvider {
    static var previews: some View {
        WalletCell(boiler.defaultWallet)
    }
}
