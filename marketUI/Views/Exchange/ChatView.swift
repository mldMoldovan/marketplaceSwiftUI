//
//  ChatView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct ChatView:View{
    
    @State var vid: [transaction] = boiler.transfers
    
    var body:some View{
        List(vid){ t in
            Text("Miel")
        }
    }
    
    
}



struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
