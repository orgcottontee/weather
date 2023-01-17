//
//  WeekWeatherView.swift
//  weather
//
//  Created by adobada on 1/17/23.
//

import SwiftUI

struct WeekWeatherView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(Color("TextColor"))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(Color("TextColor"))
        }
    }
}

struct WeekWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeekWeatherView(dayOfWeek: "Wed", imageName: "sun.min.fill", temperature: 45)
    }
}
