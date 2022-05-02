//
//  BookDetailModel.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 02/05/2022.
//

import Foundation

struct BookDetail: Identifiable {
    var id: String
    var bookId: Int
    var author, title: String
    var price: Double
    var genre: [Genre]
    var kind, description, imageName : String
    var isAvailable: Bool
    
    func priceToDouble() -> String {
        return String(format: "%.2f", price)
    }
}
