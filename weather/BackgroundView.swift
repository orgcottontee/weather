//
//  backgroundView.swift
//  weather
//
//  Created by adobada on 1/17/23.
//

import SwiftUI

struct BackgroundView: View {
    
    var topColor: Color
    var midColor: Color
    var bottomColor: Color
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, midColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct backgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(topColor: Color("purple"),
                       midColor: Color("green"),
                       bottomColor: Color("brown"),
                       isNight: false)
    }
}
