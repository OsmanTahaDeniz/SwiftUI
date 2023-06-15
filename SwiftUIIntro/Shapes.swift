//
//  Shapes.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 17.04.2023.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        //Ellipse()
        //Circle()
        // Rectangle()
        //Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 50)
           // .fill(Color.blue) //change color
           // .foregroundColor(.brown) // change color
           // .stroke() // empty circle
            .stroke(Color.red , lineWidth: 20)
           // .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [20]))
           //.trim(from: 0.5, to:1)
           // .stroke(Color.green,lineWidth: 20)
            .frame(width: 250, height: 100)

        
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
