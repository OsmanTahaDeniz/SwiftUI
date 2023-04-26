//
//  ExtractedFunctions.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 26.04.2023.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgroundColor:Color = Color.yellow
    
    var body: some View {
        
        //Background
        ZStack {
            backgroundColor.ignoresSafeArea()
            //Content Layer
            contentLayer
        }
    }
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.title)
            Button {
                buttonClicked()
            } label: {
                Text("Button 3")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    func buttonClicked() {
        backgroundColor = .purple
    }
}

struct ExtractedFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctions()
    }
}
