//
//  TransferCell.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct TransferCell:View{
    
    
    var item: transaction
    
    
    init(_ model: transaction) {
        self.item = model
    }
    
    
    var body: some View{
        
        HStack{
            Image(uiImage: UIImage(named: "default_transaction")!)
                .resizable()
                .frame(width: 60, height: 60)
                .scaledToFit()
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            VStack{
                Text(item.people[0].name)
                Text("Managed by: " + item.people[0].name)
            }
        }
        
    }
    
    
}




struct TransferCell_Previews: PreviewProvider {
    static var previews: some View {
        TransferCell(boiler.defaultTransfer)
    }
}
