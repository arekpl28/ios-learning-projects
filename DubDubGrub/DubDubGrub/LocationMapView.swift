//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 30/08/2023.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516,
                                                                                  longitude: -121.891054),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.01,
                                                                          longitudeDelta: 0.01))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Image("ddg-map-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .frame(height: 70)
                .shadow(radius: 10)
                
                Spacer ()
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
