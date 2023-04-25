//
//  SafeArea.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 25.04.2023.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content:  {
             VStack {
                Text("Hello, Swift!")
                    .font(.title)
                    .frame(maxWidth: .infinity , alignment:.leading)
                 
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 20.0)
                        .fill(Color.white)
                        .frame(height: 100)
                        .shadow(radius: 10)
                        .padding(15)
                }
            }
        })
            .background(
            Color.red
            .ignoresSafeArea(.all, edges: .bottom)
        )
        
    }
}

struct SafeArea_Previews: PreviewProvider {
    static var previews: some View {
        SafeArea()
    }
}
