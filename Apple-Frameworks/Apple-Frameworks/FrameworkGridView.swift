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
    
    // Define grid columns
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                // Create a LazyVGrid with defined columns
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) {framework in
                        // Display each framework's title using FrameworkTitleView
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks") // Navigation title
            // Present the detail view as a sheet when isShowingDetailView is true
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework:  viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}



struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            // Display framework image
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            // Display framework name
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}









struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
