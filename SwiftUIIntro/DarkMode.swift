//
//  DarkMode.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 27.05.2023.
//

import SwiftUI

struct DarkMode: View {
    
    @Environment (\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:20){
                    Text("primary color")
                        .foregroundColor(.primary)
                    Text("secondary color")
                        .foregroundColor(.secondary)
                    Text("black color")
                        .foregroundColor(.black)
                    Text("white color")
                        .foregroundColor(.white)
                    Text("green color")
                        .foregroundColor(.green)
                    Text("adaptive color")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("locally adaptive color")
                        .foregroundColor(colorScheme == .light ? .green : .orange)
                }
                
            }
            .navigationTitle(Text("Dark Mode"))
            
        }
    }
}

struct DarkMode_Previews: PreviewProvider {
    static var previews: some View {
        DarkMode()
    }
}
