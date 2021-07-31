//
//  SliderView.swift
//  SwiftUIColorizedApp
//
//  Created by Леся on 31.07.2021.
//

import SwiftUI

struct SliderView: View {
    @State private var showAlert = false
    @Binding var value: Double
    
    var textColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .frame(width: 35, height: 35)
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(textColor)
            
            TextField("\(lround(value))", value: $value,
                      formatter: NumberFormatter.numbers,
                      onCommit: {
                        checkValue()
                      })
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .background(textColor).frame(width: 50, height: 50)
                .cornerRadius(10)
            
        }
        
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Wrong Format!"), message: Text("Enter values from 0 to 255"))
        })
    }
    
    private func checkValue() {
        if value < 0 || value > 255 {
            showAlert = true
            value = 0
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(12), textColor: .white)
    }
}

extension NumberFormatter {
    static var numbers: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumIntegerDigits = 1
        formatter.maximumIntegerDigits = 3
        return formatter
    }
}
