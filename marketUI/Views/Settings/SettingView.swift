//
//  SettingView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct SettingView:View{
    
    
    
    
    // MARK: BODY
    
    var body:some View{
        
        
        List(0..<5){ item in
            HStack{
                Image(systemName: "photo")
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                VStack(alignment: .leading){
                    Text("Whatever")
                    Text("Miel toorma cioban")
                }
            }
        }
        
        
    }

    
    
}



// MARK: PREVIEW


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
