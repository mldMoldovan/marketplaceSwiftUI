//
//  RatingCreate.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct RatingEdit:View{
    
    
    
    var item:rating
    var changed = false
    
    // >>~_?
    var saved = false
    
    
    init(_ model: rating) {
        self.item = model
    }
    
    
    var body: some View{
        
        Text("WIP")
        
    }
    
    
}




struct RatingCreate_Previews: PreviewProvider {
    static var previews: some View {
        RatingEdit(boiler.defaultRating)
    }
}
