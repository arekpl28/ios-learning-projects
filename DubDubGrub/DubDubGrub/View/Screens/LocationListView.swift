//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 30/08/2023.
//

import SwiftUI

struct LocationListView: View {
    
    @State private var location: [DDGLocation] = [DDGLocation(record: MockData.location)]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(location, id: \.ckRecordID){ location in
                    NavigationLink(destination: LocationDetailView(location: location)) {
                        LocationCell(location: location)
                    }
                }
            }.navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
