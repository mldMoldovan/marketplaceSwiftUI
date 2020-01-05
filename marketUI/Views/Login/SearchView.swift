//
//  SearchView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct SearchView:View{
    
    // MARK: STATE
    
    @State var vid: [transaction] = boiler.transfers
    
    
    // MARK: BODY
    
    var body:some View{
        List(vid){ t in
            Text("Miel")
        }
    }
    
    
}





// MARK: PREVIEW

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
