//
//  ListView.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 01/05/2022.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel: ViewModel
    
    init(service: MockBookService) {
        self.viewModel = ViewModel(mockBookService: service)
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.mockBookService.bookList()) { book in
                NavigationLink(destination: LazyNavigationView(
                    BookDetailsView(
                        service: viewModel.mockBookService,
                        bookId: book.id))) {
                    RowView(book: book)
                }
            }
            .navigationBarTitle("Book list")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }

}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(service: MockBookService())
    }
}
