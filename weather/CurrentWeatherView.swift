//
//  CurrentWeatherView.swift
//  weather
//
//  Created by adobada on 1/17/23.
//

import SwiftUI

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

struct WeatherTextsView_Previews: PreviewProvider {
    static var previews: some View {
        CityTextView(cityName: "San Diego")
        MainWeatherView(imageName: "sun.max.fill", temperature: 55)
    }
}
