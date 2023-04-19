//
//  Icons.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 18.04.2023.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "doc.badge.plus")
            .renderingMode(.original)
            .resizable()
            //.aspectRatio(contentMode: .fill)
            //multicolor symbol
            .scaledToFit()
            //.font(.largeTitle)
            //.font(.system(size: 200))
            //.foregroundColor(Color.pink)
            .frame(width: 150, height: 150)
            .clipped() //fits the image
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
