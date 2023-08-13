//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Arkadiusz Plumbaum on 08/08/2023.
//

import SwiftUI
// ViewModel responsible for managing framework selection and detail view state
final class FrameworkGridViewModel: ObservableObject {
 
    // Define grid columns
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
