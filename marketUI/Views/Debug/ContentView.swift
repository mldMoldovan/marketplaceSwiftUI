//
//  ContentView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import SwiftUI
import UIKit



struct ContentView: View {
    
    
    var body: some View {
        
        
        List{
            Text("Hello cyka")
                .foregroundColor(Color.init(UIColor.green.withAlphaComponent(0.5)))
                .foregroundColor(Color.init(UIColor.red))
                .bold()
                .italic()
            Text("Miel")
            Text("Pardoun' blyat !")
            Text("De ce nu mere un parizer la frizer?")
            Text("Untul care nu se topeste e lucrarea diavolului")
        }
    
        
        
    }
    
    
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
