//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Arkadiusz Plumbaum on 08/08/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    // View model responsible for managing framework selection and detail view state
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Create a LazyVGrid with defined columns
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) {framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks") // Navigation title
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
                
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
