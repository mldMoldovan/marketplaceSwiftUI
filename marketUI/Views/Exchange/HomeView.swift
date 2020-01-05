//
//  HomeView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 16/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct HomeView:View{
    
    @State var vid: [transaction] = boiler.transfers
    
    var body:some View{
        List(vid){ t in
            Text("Home")
                .foregroundColor(.gray)
                .bold()
            Text("Salut cumetre")
                .foregroundColor(.black)
            Text("Aici se termina jmecheria")
                .foregroundColor(.black)
                .bold()
            Text("Sa moara tristi cabara...")
                .foregroundColor(.red)
                .bold()
                .italic()
        }
    }
    
    
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
