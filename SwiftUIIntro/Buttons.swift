//
//  Buttons.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 25.04.2023.
//

import SwiftUI

struct Buttons: View {
    
    @State var title: String = "This is the title"
    
    var body: some View {
        VStack (spacing: 20) {
            Text(title)
            Button("Button 1"){
                self.title = "Button pressed"
            }
            .accentColor(.red)
            Button {
                self.title = "Button 2 pressed"
            } label: {
                Text("Button 2".uppercased())
            }
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal,10)
            .background(
                Color.blue
                    .cornerRadius(10)
                    .shadow(radius: 10)
            )
            Button {
                self.title = "Button 3 pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75 , height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    }
            }
            Button {
                self.title = "Button 4 pressed"
            }
        label: {
            Text("Button 4".uppercased())
                .font(.headline)
                .foregroundColor(.brown)
                .italic()
                .padding()
                .padding(.horizontal,5)
                .background(
                    Capsule()
                        .stroke(.brown, lineWidth: 2.0)
                )
        }
        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
