//
//  Book.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 01/05/2022.
//

import Foundation
import SwiftUI

struct Book: Identifiable {
    var id: Int
    var title: String
    var author: String
    var price: Double
    var imageName: String
    
    func priceToDouble() -> String {
         return String(format: "%.2f", price)
     }
}

enum Genre: String {
    case fantasy = "Fantasy"
    case action = "Action"
    case history = "History"
    case present = "Present"
    case drama = "Drama"
    case scienceFiction = "Sci-Fi"
    case economics = "Economics"
    case business = "Business"
}


