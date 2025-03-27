//
//  SecondView.swift
//  NavigationController
//
//  Created by Daria Kozlovska on 27/03/2025.
//

import SwiftUI

struct SecondView: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.maroon
                    .edgesIgnoringSafeArea(.all)
                
                Text("SecondView ekran")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}

extension Color {
    static let maroon = Color(red: 128/255, green: 0/255, blue: 0/255)
}

#Preview {
    SecondView()
}
