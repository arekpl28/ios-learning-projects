//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Arkadiusz Plumbaum on 08/08/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    // Binding to control the detail view's presentation
    @Binding var isShowingDetailView: Bool
    // State to control SafariView presentation
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            // Display the framework title
            FrameworkTitleView(framework: framework)
            // Display the framework description
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            // "Learn More" Button
            Button {
                // Action to navigate to more information
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                // Present SafariView with the framework's URL
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "apple.com")!)
            })

        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
