//
//  RatingCell.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct RatingCell:View{
    
    
    var item: rating
    
    
    init(_ model: rating) {
        self.item = model
    }
    
    
    var body: some View{
        
        HStack{
            Image(uiImage: UIImage(named: "default_user")!)
                .resizable()
                .frame(width: 60, height: 60)
                .scaledToFit()
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            VStack{
                Text(item.title)
                Text(item.comment)
            }
        }
        
    }
    
    
}




struct RatingCell_Previews: PreviewProvider {
    static var previews: some View {
        RatingCell(boiler.defaultRating)
    }
}
