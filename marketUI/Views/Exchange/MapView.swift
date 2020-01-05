//
//  MapView.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import SwiftUI
import MapKit


struct MapView:View{
    
    
    
    // MARK: BODY
    
    var body:some View{
        Map()
           .edgesIgnoringSafeArea(.vertical)
           .frame(width: core.w, height: core.h - 100, alignment: .bottom)
    }
    
    
}



// MARK: __MAP

struct Map: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }

  func updateUIView(_ uiView: MKMapView, context: Context) {
  }
}



// MARK: PREVIEW

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
