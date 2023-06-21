//
//  TextSelections.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 20.06.2023.
//

import SwiftUI

struct TextSelections: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .textSelection(.enabled)
    }
}

struct TextSelections_Previews: PreviewProvider {
    static var previews: some View {
        TextSelections()
    }
}
