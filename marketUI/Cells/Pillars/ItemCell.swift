//
//  ItemCell.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct ItemCell:View{
    
    
    var item: item
    
    
    init(_ model: item) {
        self.item = model
    }
    
    
    var body: some View{
        
        HStack{
            Image(uiImage: item.images[0])
                .resizable()
                .frame(width: 60, height: 60)
                .scaledToFit()
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            VStack{
                Text(item.description ?? "moomoo")
                Text(item.name)
            }
        }
        
    }
    
    
}




struct ItemCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemCell(boiler.defaultItem)
    }
}
