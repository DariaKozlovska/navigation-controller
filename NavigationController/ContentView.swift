//
//  ContentView.swift
//  NavigationController
//
//  Created by Daria Kozlovska on 27/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.iron // Kolor tła
                    .edgesIgnoringSafeArea(.all) // Rozciągnięcie na cały ekran
                
                VStack {
                    Text("Ekran główny")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                }
            }
        }
    }
}

extension Color {
    static let iron = Color(red: 209/255, green: 209/255, blue: 209/255)
}

#Preview {
    ContentView()
}
