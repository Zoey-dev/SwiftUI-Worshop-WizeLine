//
//  CustomPillView.swift
//  SwiftUI-Workshop
//
//  Created by Princess  on 02/05/2022.
//

import SwiftUI

struct CustomPillView: View {
    var text: String
    var action: (() -> Void?)? = nil
    
    var body: some View {
        Button {
            guard let action = action else {
                return
            }

            action()
        } label: {
            HStack {
                Text(text)
                    .foregroundColor(.black)
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 1))
        }
    }
}

struct CustomPillView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPillView(text: "Action")
    }
}
