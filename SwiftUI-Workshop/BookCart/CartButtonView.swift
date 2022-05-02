//
//  CartButtonView.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 02/05/2022.
//

import SwiftUI

struct CartButtonView: View {
    var numberOfItems: Int
    var body: some View {
        VStack {
            Image("shopping-bag")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32, alignment: .center)
                .overlay(CartImageOverlay(numberOfItems: numberOfItems)
                            .padding(.top, 4),
                         alignment: .center)
            Spacer()
        }
    }
}

struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(numberOfItems: 2)
    }
}
