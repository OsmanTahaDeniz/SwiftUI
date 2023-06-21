//
//  ButtonStyles.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 21.06.2023.
//

import SwiftUI

struct ButtonStyles: View {
    var body: some View {
        VStack{
            //ButtonStyles are using accent color.
            Button {
                
            } label: {
                Text("Button Styles")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 40))

            Button("Button Styles") {
                
            }
            
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            Button("Button Styles") {
                
            }
            
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            Button("Button Styles") {
                
            }
            
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            Button("Button Styles") {
                
            }
            
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            Button("Button Styles") {
                
            }
            
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            Button("Button Styles") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)

            Button("Button Styles") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            Button("Button Styles") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
        }
    }
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyles()
    }
}
