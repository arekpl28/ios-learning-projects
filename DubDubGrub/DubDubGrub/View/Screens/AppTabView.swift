//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 30/08/2023.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                        .environment(\.symbolVariants,
                                      .none)
                }
            
            LocationListView()
                .tabItem {
                    Label("Location", systemImage: "building")
                        .environment(\.symbolVariants, .none)
                }
            
            NavigationView {
                ProfileView()
            }.tabItem {
                Label("Profile", systemImage: "person")
                    .environment(\.symbolVariants, .none)
            }
        }.tint(.brandPrimary)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
