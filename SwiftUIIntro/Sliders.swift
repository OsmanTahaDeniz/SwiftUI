//
//  Sliders.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 23.05.2023.
//

import SwiftUI

struct Sliders: View {
    
    @State private var sliderValue:Double = 3
    @State private var color:Color = .red
    var body: some View {
        VStack {
            Text("Rating")
                .font(.headline)
            Text(
            String(format: "%.1f", sliderValue)
            )
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(color)
            //Text("\(sliderValue)")
           // Slider(value: $sliderValue)
           // Slider(value: $sliderValue, in: 1...100)
            //Slider(value: $sliderValue, in: 1...7, step: 0.5)
            HStack {
                Spacer()
                Slider(
                        value: $sliderValue,
                        in: 1...9,
                        step: 1.0,
                        label: {
                            Text("Title")
                        },
                        minimumValueLabel: {
                            Text("1")
                                .foregroundColor(.accentColor)
                                .font(.title)
                        },
                        maximumValueLabel: {
                            Text("9")
                                .foregroundColor(.orange)
                                .font(.largeTitle)
                        },
                        onEditingChanged: { (_) in
                            color = .green
                    })
                Spacer()
            }
            }
        }
    }


struct Sliders_Previews: PreviewProvider {
    static var previews: some View {
        Sliders()
    }
}
