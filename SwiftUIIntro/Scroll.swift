//
//  Scroll.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 24.04.2023.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<30) { index in
                    ScrollView(.horizontal, showsIndicators: false,
                               content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}
//ScroolView vertical for vertical view horizantal for horizantal scrollview
struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
