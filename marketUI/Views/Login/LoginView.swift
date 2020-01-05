//
//  LoginView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct LoginView:View{
    
    
    
    // MARK: STATE
    
    @State var tries = 0
    
    
    
    // MARK: BODY
    
    var body:some View{
        
        VStack{
            Image(uiImage: UIImage(named: "clown_icon")!)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("Username...")
                .frame(width: core.w - 100, height: 70)
            Text("Password...")
                .frame(width: core.w - 100, height: 70)
        }
        
    }
    
    
}


// MARK: PREVIEW

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
