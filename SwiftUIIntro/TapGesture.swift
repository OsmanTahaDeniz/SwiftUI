//
//  TapGesture.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 5.06.2023.
//

import SwiftUI

struct TapGesture: View {
    
    @State private var isSelected:Bool = false
    
    var body: some View {
        VStack (spacing:20){
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.yellow : Color.red)
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            Text("Button")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture (count: 2){
                    isSelected.toggle()
                }
            
            Spacer()

        }
        .padding(40)
    }
}

struct TapGesture_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture()
    }
}
