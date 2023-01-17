//
//  ContentView.swift
//  weather
//
//  Created by adobada on 12/31/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: Color("purple"),
                           midColor: Color("green"),
                           bottomColor: Color("brown"),
                           isNight: false)
    
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                                
                MainWeatherView(imageName: "sun.max.fill", temperature: 76)
                
                Spacer()
                
                HStack {
                    WeekWeatherView(dayOfWeek: "Tue", imageName: "cloud.rain.fill", temperature: 68)
                    WeekWeatherView(dayOfWeek: "Wed", imageName: "cloud.bolt.fill", temperature: 50)
                    WeekWeatherView(dayOfWeek: "Thu", imageName: "cloud.fill", temperature: 74)
                    WeekWeatherView(dayOfWeek: "Fri", imageName: "cloud.sun.rain.fill", temperature: 66)
                    WeekWeatherView(dayOfWeek: "Sat", imageName: "sun.haze.fill", temperature: 79)
                }
                
                Spacer()
                
                Button {
                    print("hello")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .bold))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
