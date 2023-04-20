//
//  Padding.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 20.04.2023.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("Hello Swift")
            //   .padding()
            //  .padding(.all,10) default padding value
                .font(Font.title)
                .fontWeight(.bold)
                .padding(.bottom,15)
                //.frame(maxWidth: .infinity,alignment: .leading)
                //.background(Color.blue)
            //.padding(.leading,20)
            Text("Padding, Adds an equal padding amount to specific edges of this view.Parameters of padding are edges and length.")
        }
        .padding()
        .padding(.vertical,10)
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(
                    color: .black.opacity(0.4),
                        radius: 5,
                        x: 0.0,
                        y: 5
                )
        )
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        Padding()
    }
}
