//
//  ContentView.swift
//  weatherapp
//
//  Created by Flynn Stevens on 6/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack {
            LinearGradient(colors: [Color("darkBG"), Color("lightBG")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Christchurch, NZ")
                    .font(.system(size:32, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("24°")
                        .font(.system(size:70, weight: .medium))
                        .foregroundColor(.white)
                        
                }
                Spacer()
                
                Rectangle()
                    .fill(.blue.opacity(0.2))
                    .frame(width: 300, height: 200)
                    .cornerRadius(10)
                    .overlay(
                        VStack {
                            Text("5-Day Forecast")
                                .foregroundColor(.white)
                                .padding(.top)
                            Divider()
                                .padding(10)
                                .foregroundColor(.white)
                            HStack {
                                WeatherDayView(dayOfWeek: "SUN", imageName: "cloud.drizzle.fill", dailyHigh: 18)
                                WeatherDayView(dayOfWeek: "MON", imageName: "cloud.heavyrain.fill", dailyHigh: 14)
                                WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.rain.fill", dailyHigh: 19)
                                WeatherDayView(dayOfWeek: "WED", imageName: "wind", dailyHigh: 28)
                                WeatherDayView(dayOfWeek: "THU", imageName: "sun.max.fill", dailyHigh: 31)
                            }
                            Spacer()
                        }
                            .padding(10)
                            .foregroundColor(.white)
                        )
                
                
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

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var dailyHigh: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(dailyHigh)°")
                .font(.system(size:28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
