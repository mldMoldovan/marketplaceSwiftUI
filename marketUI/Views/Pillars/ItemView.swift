//
//  ItemView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct ItemView:View{
    
    
    // MARK: STATE
    
    @State var vid: [item] = boiler.items
    
    
    
    // MARK: BODY
    
    var body:some View{
        List(vid){ i in
            ItemCell(i)
        }
    }
    
    
}




// MARK: PREVIEW


struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
