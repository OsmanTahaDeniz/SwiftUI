//
//  States.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 25.04.2023.
//

import SwiftUI

struct States: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "My Title"
    @State var count: Int = 0
    @State var titleFont: Font = .largeTitle
    @State var spacing:
    
    
        var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea(.all)
            VStack(spacing:20) {
                Text(title)
                    .font(titleFont)
                Text("count: \(count)")
                    .font(.headline)
                    .underline()
                HStack (spacing:20) {
                    Button("Button 1".uppercased()) {
                        title = "Blue Title"
                        titleFont = .title
                        count = count + 1
                        backgroundColor = .blue
                    }
                    Button("Button 2".uppercased()) {
                        title = "Purple Title"
                        titleFont = .title2
                        count-=1
                        backgroundColor = .purple
                    }
                    
                }
                
            }
           
        }
        .foregroundColor(.white)
    }
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        States()
    }
}
