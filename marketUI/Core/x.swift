//
//  x.swift
//  marketUI
//
//  Created by Mihai Moldovan on 11/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI


// MARK: STRUCTS


struct RoundedBorder<S>: ViewModifier where S : ShapeStyle {
    let shapeStyle: S
    var width: CGFloat = 1
    let cornerRadius: CGFloat
    
    init(_ shapeStyle: S, width: CGFloat, cornerRadius: CGFloat) {
        self.shapeStyle = shapeStyle
        self.width = width
        self.cornerRadius = cornerRadius
    }
    
    func body(content: Content) -> some View {
        return content.overlay(RoundedRectangle(cornerRadius: cornerRadius).strokeBorder(shapeStyle, lineWidth: width))
    }
}

struct SaveBoundsPrefData: Equatable {
    let viewId: Int
    let bounds: CGRect
}

struct SaveBoundsPrefKey: PreferenceKey {
    static var defaultValue: [SaveBoundsPrefData] = []
    
    static func reduce(value: inout [SaveBoundsPrefData], nextValue: () -> [SaveBoundsPrefData]) {
        value.append(contentsOf: nextValue())
    }
    
    typealias Value = [SaveBoundsPrefData]
}


 // MARK: IMAGE

extension Image {
    init(_ name: String, defaultImage: String) {
        if let img = UIImage(named: name) {
            self.init(uiImage: img)
        } else {
            self.init(defaultImage)
        }
    }
    
    init(_ name: String, defaultSystemImage: String) {
        if let img = UIImage(named: name) {
            self.init(uiImage: img)
        } else {
            self.init(systemName: defaultSystemImage)
        }
    }
}


// MARK: VIEW


extension View {
    public func saveBounds(viewId: Int, coordinateSpace: CoordinateSpace = .global) -> some View {
        background(GeometryReader { proxy in
            Color.clear.preference(key: SaveBoundsPrefKey.self, value: [SaveBoundsPrefData(viewId: viewId, bounds: proxy.frame(in: coordinateSpace))])
        })
    }
    
    public func retrieveBounds(viewId: Int, _ rect: Binding<CGRect>) -> some View {
        onPreferenceChange(SaveBoundsPrefKey.self) { preferences in
            DispatchQueue.main.async {
                // The async is used to prevent a possible blocking loop,
                // due to the child and the ancestor modifying each other.
                let p = preferences.first(where: { $0.viewId == viewId })
                rect.wrappedValue = p?.bounds ?? .zero
            }
        }
    }
}


// MARK: DATE

extension Date {
   var age: Int {
       return Calendar.current.dateComponents([.year], from: self, to: Date()).year!
   }
}
