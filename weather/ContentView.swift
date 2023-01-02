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
            BackgroundView(isNight: isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                Spacer()
                
                MainWeatherView(imageName: "sun.min", temperature: 76)
                
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

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.largeTitle)
            .foregroundColor(.white)
    }
}

struct MainWeatherView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        
        VStack {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }

    }
}

struct WeekWeatherView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
