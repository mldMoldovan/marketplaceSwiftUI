//
//  ListView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct UserView:View{
    
    
    
    // MARK: STATE
    
    @State var vid: [user] = boiler.users
    
    
    
    // MARK: BODY
    
    var body:some View{
        
        List(vid){ u in
            UserCell(u)
        }
    }
    
    
}




// MARK: PREVIEW

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
