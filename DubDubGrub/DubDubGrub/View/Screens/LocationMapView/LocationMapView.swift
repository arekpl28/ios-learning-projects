//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 30/08/2023.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @StateObject private var viewModel = LocationMapViewModel()
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $viewModel.region).edgesIgnoringSafeArea(.top)
            
            VStack {
                LogoView(logoName: "ddg-map-logo").shadow(radius: 10)
                Spacer ()
            }
        }
        .alert(item:$viewModel.alertItem, content: { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
            
        })
        .onAppear {
            viewModel.getLocations()
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}

struct LogoView: View {
    
    let logoName: String
    
    var body: some View {
        Image(logoName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 70)
    }
}
