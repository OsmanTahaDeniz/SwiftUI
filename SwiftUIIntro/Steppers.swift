//
//  Steppers.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 22.05.2023.
//

import SwiftUI

struct Steppers: View {
    
    @State private var stepperInt = 10
    @State private var widthIncrement:CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper1: \(stepperInt)", value: $stepperInt)
            
            Rectangle()
                .frame(width: 100 + widthIncrement,height: 100,alignment: .center)
            
            Stepper("Stepper2:") {
                widthIncrement(amount: +10)
            } onDecrement: {
                widthIncrement(amount: -10)
            }
        }
    }
        func widthIncrement(amount:CGFloat){
            withAnimation(.easeIn){
              widthIncrement += amount
        }
              }
}

struct Steppers_Previews: PreviewProvider {
    static var previews: some View {
        Steppers()
    }
}
