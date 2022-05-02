//
//  CartOverlayView.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 02/05/2022.
//

import SwiftUI

struct CartImageOverlay: View {
    var numberOfItems: Int
    
    var body: some View {
        ZStack {
            Text(String(numberOfItems))
                .font(.system(size: 12))
                .foregroundColor(.black)
                .padding(5)
        }
    }
}

struct CartImageOverlay_Previews: PreviewProvider {
    static var previews: some View {
        CartImageOverlay(numberOfItems: 2)
    }
}

struct ItemCountImageOverlay: View {
    var text: String
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.black)
                .padding(5)
        }
    }
}
