//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Arkadiusz Plumbaum on 08/08/2023.
//

import SwiftUI

struct XDismissButton: View {
    // Binding to control the detail view's presentation
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer ()
            // Close Button
            Button {
                // Action to dismiss the view
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding(.horizontal)
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
