//
//  SingleItemView.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 02/05/2022.
//

import SwiftUI

struct SingleCartItemView: View {
    var item: CartItems
    var body: some View {
        HStack() {
            BookImage(image: Image(item.item.imageName))
            
            VStack(alignment: .leading) {
                Text(item.item.title)
                Spacer().frame(height: 15)
                Text("$ \(item.item.priceToDouble())")
                    .font(.system(size: 18))
                    .bold()
            }
            .padding([.top, .bottom])
            .frame(width: 150)
            
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .font(.system(size: 16, weight: .ultraLight, design: .default))
                .overlay(ItemCountImageOverlay(text: "x\(item.unit)"))
                .padding(.leading, 20)
        }
    }
}

struct SingleCartItemView_Previews: PreviewProvider {
    static var previews: some View {
        let bookService: MockBookService = MockBookService()
        let book = ViewModel(mockBookService: bookService).mockBookService.books[0]
        let item = CartItems(id: "1", item: book, unit: 2)
        SingleCartItemView(item: item)
    }
}
