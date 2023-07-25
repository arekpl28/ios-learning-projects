//
//  MainWeatherStatusView.swift
//  SwiftUI-Weather
//
//  Created by Arkadiusz Plumbaum on 25/07/2023.
//

import SwiftUI

struct MainWeatherStatusView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(isNight ? 17 : 26)°C")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 40)
    }
}
