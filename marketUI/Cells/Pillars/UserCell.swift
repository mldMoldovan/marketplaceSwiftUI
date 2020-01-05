//
//  UserCell.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI


struct UserCell:View{
    
    
    var item: user
    var i:UIImage?
    
    
    init(_ model: user) {
        self.item = model
        if let j = item.images{
            if j.count > 0{
                i = j[0]
            }
        }
    }
    
    
    var body: some View{
        
        HStack{
            Image(systemName: "person")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .scaledToFit()
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                .foregroundColor(.black)
            
            VStack(alignment: .leading, spacing: 0){
                Text(item.name)
                    .bold()
                    .foregroundColor(.gray)
                    .frame(width: core.w - 120, height: 30)
                    //?
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                Text(item.fullname)
                    .italic()
                    .foregroundColor(.blue)
                    .frame(width: core.w - 120, height: 30)
                    //?
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
            }
            
        }
        
    }
    
    
}




struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(boiler.defaultUser)
    }
}
