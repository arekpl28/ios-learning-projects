//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 30/08/2023.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10){_ in
                    NavigationLink(destination: LocationDetailView()) {
                        LocationCell()
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
