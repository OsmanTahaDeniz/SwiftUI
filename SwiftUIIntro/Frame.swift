//
//  Frame.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 19.04.2023.
//

import SwiftUI

struct Frame: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.blue)
            .frame(height: 100,alignment: .bottom)
            .background(.brown)
            .frame(width: 150)
            .background(.orange)
            .frame(maxWidth: .infinity,alignment: .trailing)
            .background(.green)
            .frame(height: 300)
            .background(.purple)
            .frame(maxHeight: .infinity,alignment:.bottomTrailing)
            .background(.yellow)
    }
}

struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Frame()
    }
}
