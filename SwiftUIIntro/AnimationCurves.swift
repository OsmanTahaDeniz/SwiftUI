//
//  AnimationCurves.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 27.04.2023.
//

import SwiftUI
//How animations start and finish is animation curve
struct AnimationCurves: View {
    @State var isAnimated:Bool = false
    var body: some View {
        VStack {
            
            Button("Animate"){
                withAnimation (Animation.linear)
                {
                    isAnimated.toggle()
                }
            }
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .cornerRadius(20)
            .frame(width: 100 , height: 80)
            
            
            withAnimation (Animation.linear){
                    Rectangle()
                    .frame(width: isAnimated ? 300 : 100,height: 100)
                            }
            Spacer()
            Rectangle()
                .frame(width: isAnimated ? 300 : 100,height: 100)
                .animation(.easeIn,value: 10)
            Spacer()
            Rectangle()
                .frame(width: isAnimated ? 300 : 100,height: 100)
                .animation(.easeOut, value: true)
            Spacer()
            Rectangle()
                .frame(width: isAnimated ? 300 : 100,height: 100)
                .animation(.easeInOut,value: true)
            Spacer()
            Rectangle()
                .frame(width: isAnimated ? 300 : 100,height: 100)
                .animation(.spring(),value: true)
        }
    }
}

struct AnimationCurves_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurves()
    }
}
