//
//  ContentView.swift
//  SwiftUIColorizedApp
//
//  Created by Леся on 31.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 110
    @State private var blueValue: Double = 111
    @State private var greenValue: Double = 110
    
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()
                .background(LinearGradient(gradient: Gradient(colors: [.white, .blue, .red]), startPoint: .top, endPoint: .bottom))
            VStack {
                Text("Colorized")
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                ColorView(
                    redValue: $redValue,
                    blueValue: $blueValue,
                    greenValue: $greenValue
                )
                .padding(.bottom, 30)
                SliderView(value: $redValue, textColor: .red)
                
                SliderView(value: $blueValue, textColor: .blue)
                
                SliderView(value: $greenValue, textColor: .green)
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
