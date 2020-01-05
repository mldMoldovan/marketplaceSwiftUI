//
//  MarketView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct MarketView:View{
    
    
    
    // MARK: STATE
    
    @State var vid: [market] = boiler.markets
    
    
    
    
    // MARK: BODY
    
    var body:some View{
        List(vid){ m in
            MarketCell(m)
        }
    }
    
    
}



// MARK: PREVIEW

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}
