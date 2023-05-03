//
//  Animations.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 27.04.2023.
//

import SwiftUI

struct Animations: View {
    
    @State var isAnimated:Bool = false
    
    var body: some View {
        VStack {
            Button("Button"){
                withAnimation (Animation.default)
                {
                    isAnimated.toggle()
                }
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .cornerRadius(20)
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25 )
                .fill(isAnimated ? Color.red : Color.purple)
                .frame(
                    width: isAnimated ? 60 : 300
                    ,height:isAnimated ? 60 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y:isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
