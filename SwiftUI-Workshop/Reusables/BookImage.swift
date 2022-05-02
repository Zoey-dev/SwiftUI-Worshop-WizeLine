//
//  BookImage.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 02/05/2022.
//

import Foundation
import SwiftUI

struct BookImage: View {
    let image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 70, height: 100)
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 10, x: 5, y: 5)
            .padding()
    }
}

struct BookImage_Previews: PreviewProvider {
    static var previews: some View {
        BookImage(image: Image("creativity"))
    }
}
