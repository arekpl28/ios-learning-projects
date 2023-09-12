//
//  LocationManager.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 12/09/2023.
//

import Foundation

final class LocationManager: ObservableObject {
    
    @Published var locations: [DDGLocation] = []
}
