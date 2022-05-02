//
//  BookDetailImageView.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 02/05/2022.
//

import SwiftUI

struct BookDetailImageView: View {
    let image: Image
    var body: some View {
        image
            .resizable()
            .frame(width: 180, height: 280)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 10, x: 5, y: 5)
    }
}

struct BookDetailImageView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailImageView(image: Image("creativity"))
    }
}
