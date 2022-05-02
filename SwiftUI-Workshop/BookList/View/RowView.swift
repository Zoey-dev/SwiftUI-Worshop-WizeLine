//
//  RowView.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 01/05/2022.
//

import SwiftUI

struct RowView: View {
    let book: Book
    
    var body: some View {
        HStack {
            BookImage(image: Image(book.imageName))
            VStack(alignment: .leading) {
                Text(book.title)
                    .foregroundColor(.black)
                    .font(.headline)
                    .fontWeight(.semibold)
            
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                Text("by " + book.author)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
                    .frame(height: 15)
                Text("$" + String(book.price))
                    .font(.title)
                    .foregroundColor(.green)
                
            }
        }
    }
}

//struct RowView_Previews: PreviewProvider {
//    static var previews: some View {
//        RowView(book: Book(id: 1, title: "Black Head", author: "Johnny Depp", price: 20.47, imageName: "creativity"))
//    }
}
