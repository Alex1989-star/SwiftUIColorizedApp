//
//  ColorView.swift
//  SwiftUIColorizedApp
//
//  Created by Леся on 31.07.2021.
//

import SwiftUI

struct ColorView: View {
    @Binding var redValue: Double
    @Binding var blueValue: Double
    @Binding var greenValue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 350, height: 150, alignment: .top)
            .foregroundColor(Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255))
            
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redValue: .constant(12), blueValue: .constant(12), greenValue: .constant(12))
    }
}
