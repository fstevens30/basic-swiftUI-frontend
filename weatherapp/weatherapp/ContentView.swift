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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
