//
//  CreateView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI






struct CreateView:View{
    
    
    //var c:UserEdit
    var type:pillar
    
    
    init(_ type: pillar) {
        self.type = type
    }
    
    var body:some View{
        Text("Blyat")
    }
    
    
}


struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView(.User)
    }
}
