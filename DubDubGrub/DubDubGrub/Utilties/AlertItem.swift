//
//  AlertItem.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 03/09/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let unableToGetLocations = AlertItem(title: Text("Locations Error"),
                                                message: Text("""
                                                                Unable to retrieve locations at this time.
                                                                Please try again.
                                                                """),
                                                dismissButton: .default(Text("OK")))
}
