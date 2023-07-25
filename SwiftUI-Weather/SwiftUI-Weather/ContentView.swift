//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created on 25/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    // State property to control day and night mode
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            // Background view with gradient colors based on day or night mode
            BackgroundView(isNight: $isNight)
            
            VStack {
                // Display city name
                CityTextView(cityName: "Cupertino, CA")
                
                // Main weather status with weather icon and temperature
                MainWeatherStatusView(isNight: $isNight)
                
                // Display weather forecast for different days of the week
                HStack{
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 23)
                    Spacer()
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 20)
                    Spacer()
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind",
                                   temperature: 19)
                    Spacer()
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 22)
                    Spacer()
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature: 25)
                }.padding(.horizontal)
                
                Spacer()
                
                // Button to toggle day and night mode
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
