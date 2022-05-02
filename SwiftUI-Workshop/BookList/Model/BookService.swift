//
//  BookService.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 02/05/2022.
//

import Foundation


protocol BookService {
    // Book list
    func bookList() -> [Book]
    
    // Book detail
    func bookDetails(bookId: Int) -> BookDetail
    func numberOfCartItems() -> Int
    func addToCart(bookId: Int)
    
    // Cart
    func cartItems() -> Cart
    func checkout()

}


