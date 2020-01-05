//
//  RatingView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI



struct RatingView:View{
    
    
    
    // MARK: STATE
    
    @State var vid: [rating] = boiler.ratings
    
    
    
    
    // MARK: BODY
    
    var body:some View{
        List(vid){ r in
            RatingCell(r)
        }
    }
    
    
}



// MARK: PREVIEW

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
