//
//  DebugView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit



struct DebugView:View{
    
    
    
    // MARK: STATE
    
    @State var views = []
    @State var names = []
    
    
    func fillData(){
        
        
        
    }
    
    
    
    // MARK: BODY
    
    var body:some View{
        
        
        List{
            
            HStack{
                Image(systemName: "photo")
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                VStack{
                    Text("Here we should have some stuff nigga")
                    Text("Check out and stay in touch yo")
                        .foregroundColor(Color.init(UIColor.red))
                    Text("Sal'tare cumetre !")
                }
            }
        }
        
    }
    
    
}



// MARK: PREVIEW


struct DebugView_Previews: PreviewProvider {
    static var previews: some View {
        DebugView()
    }
}
