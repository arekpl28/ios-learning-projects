//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Arkadiusz Plumbaum on 16/08/2023.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
