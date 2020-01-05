//
//  WalletCreate.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct WalletEdit:View{
    
    
    
    var item:wallet
    var changed = false
    
    // >>~_?
    var saved = false
    
    
    init(_ model: wallet) {
        self.item = model
    }
    
    
    var body: some View{
        
        Text("WIP")
        
    }
    
    
}




struct WalletCreate_Previews: PreviewProvider {
    static var previews: some View {
        WalletEdit(boiler.defaultWallet)
    }
}
