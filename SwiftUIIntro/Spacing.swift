//
//  Spacing.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 27.04.2023.
//

import SwiftUI

struct Spacing: View {
    var body: some View {
        HStack(spacing: nil) {
            Spacer()
            Rectangle()
                .frame(width: 100, height: 100)
            
            Spacer()
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Spacer()
        }
        .background(Color.green)
        
        
    }
}

struct Spacing_Previews: PreviewProvider {
    static var previews: some View {
        Spacing()
    }
}
