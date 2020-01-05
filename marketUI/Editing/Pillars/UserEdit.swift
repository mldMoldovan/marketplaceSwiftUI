//
//  UserCreate.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct UserEdit:View{
    
    
    
    var item:user
    var changed = false
    
    // >>~_?
    var saved = false
    
    
    init(_ model: user) {
        self.item = model
    }
    
    
    var body: some View{
        
        Text("WIP")
        
    }
    
    
}




struct UserCreate_Previews: PreviewProvider {
    static var previews: some View {
        UserEdit(boiler.defaultUser)
    }
}
