//
//  ContentView.swift
//  weather
//
//  Created by adobada on 12/31/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
            LinearGradient(colors: [.blue, .white], startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            
            VStack {
                Text("Cupertino, CA")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                VStack {
                    Image(systemName: "sun.min")
                        .font(.largeTitle)
                    Text("76°")
                        .font(.largeTitle)
                }
                
                HStack {
                    VStack {
                        Text("Tues")
                        Image(systemName: "snow")
                        Text("76°")
                    }
                    VStack {
                        Text("Tues")
                        Image(systemName: "snow")
                        Text("76°")
                    }
                    VStack {
                        Text("Tues")
                        Image(systemName: "snow")
                        Text("76°")
                    }
                    VStack {
                        Text("Tues")
                        Image(systemName: "snow")
                        Text("76°")
                    }
                    VStack {
                        Text("Tues")
                        Image(systemName: "snow")
                        Text("76°")
                    }
                    
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
