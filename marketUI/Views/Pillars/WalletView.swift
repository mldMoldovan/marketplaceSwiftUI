//
//  WalletView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct WalletView:View{
    
    
    
    // MARK: STATE
    
    @State var vid: [wallet] = boiler.wallets
    
    
    
    // MARK: BODY
    
    var body:some View{
        
        ScrollView{
            ForEach(vid){ w in
                WalletCell(w)
            }
        }
    }
    
    
}



// MARK: PREVIEW


struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
