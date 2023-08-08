//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Arkadiusz Plumbaum on 08/08/2023.
//

import SwiftUI
// ViewModel responsible for managing framework selection and detail view state
final class FrameworkGridViewModel: ObservableObject {
    // Property to hold the selected framework
    var selectedFramework: Framework? {
        didSet {
            // When a framework is selected, show the detail view
            isShowingDetailView = true
        }
    }
    // Published property to track if the detail view should be shown
    @Published  var isShowingDetailView = false
}
