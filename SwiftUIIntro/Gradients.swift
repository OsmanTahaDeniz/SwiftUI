//
//  Gradients.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 18.04.2023.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //Color.red
//                LinearGradient(
//                    colors: [Color.orange,Color.red],
//                    startPoint: .leading,
//                    endPoint: .trailing)
                
//        RadialGradient (
//                    colors: [Color.red,Color.blue],
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 200
//      )
                AngularGradient(
                                gradient: Gradient(colors: [Color.orange,Color.yellow]) ,
                                center: .center,
                                angle: .degrees(60))
        )
        // We can put as many color as we want because colors is array
            .frame(width: 350, height: 300)
   }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
