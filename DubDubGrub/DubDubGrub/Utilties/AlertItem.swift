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
    
    static let locationRestricted   = AlertItem(title: Text("Locations Restricted"),
                                                message: Text("""
                                                                Your location is restricted.
                                                                This may be due to parental controls.
                                                                """),
                                                dismissButton: .default(Text("OK")))
    
    static let locationDenied       = AlertItem(title: Text("Locations Denied"),
                                                message: Text("""
                                                                Dub Dub Grub does no have permission to access your location.
                                                                To change that go to your phone's Settings > Dub Dub Grub > Location
                                                                """),
                                                dismissButton: .default(Text("OK")))
    
    static let locationDisabled     = AlertItem(title: Text("Locations Disabled"),
                                                message: Text("""
                                                                Your phone's location services are disabled.
                                                                To change that go to your phone's Settings > Privacy > Location Services
                                                                """),
                                                dismissButton: .default(Text("OK")))
}
