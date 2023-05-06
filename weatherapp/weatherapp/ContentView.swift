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
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Christchurch, NZ")
                    .font(.system(size:32, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
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
