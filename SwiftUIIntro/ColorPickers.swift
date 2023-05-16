//
//  ColorPickers.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 16.05.2023.
//

import SwiftUI

struct ColorPickers: View {
    @State private var backgroundColor:Color = Color.yellow
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            ColorPicker("Color Picker",selection: $backgroundColor,supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(Color.white)
                .font(.headline)
                .padding(50)
        }
    }
}

struct ColorPickers_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickers()
    }
}
