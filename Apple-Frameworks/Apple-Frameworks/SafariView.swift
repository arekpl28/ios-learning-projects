//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Arkadiusz Plumbaum on 08/08/2023.
//

import SwiftUI
import SafariServices
// A SwiftUI view that wraps SafariServices to display a webpage
struct SafariView: UIViewControllerRepresentable {
    let url: URL
    // Create the Safari view controller
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    // Update the Safari view controller
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
