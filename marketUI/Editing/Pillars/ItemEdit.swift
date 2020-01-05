//
//  ItemCreate.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct ItemEdit:View{
    
    
    
    var item:item
    var changed = false
    
    // >>~_?
    var saved = false
    
    
    init(_ model: item) {
        self.item = model
    }
    
    
    var body: some View{
        
        Text("WIP")
        
    }
    
    
}




struct ItemCreate_Previews: PreviewProvider {
    static var previews: some View {
        ItemEdit(boiler.defaultItem)
    }
}
