//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Arkadiusz Plumbaum on 08/08/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework

    // State to control SafariView presentation
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
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
                //                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            // Present SafariView with the framework's URL
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
