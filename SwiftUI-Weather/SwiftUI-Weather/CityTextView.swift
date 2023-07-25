//
//  CityTextView.swift
//  SwiftUI-Weather
//
//  Created by Arkadiusz Plumbaum on 25/07/2023.
//

import SwiftUI

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
