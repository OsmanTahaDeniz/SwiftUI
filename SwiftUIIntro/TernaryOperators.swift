//
//  TernaryOperators.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 27.04.2023.
//

import SwiftUI

struct TernaryOperators: View {
    
 @State var isChanging:Bool = false
    
    var body: some View {
        VStack {
            Button(("Change")){
                isChanging.toggle()
            }
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .cornerRadius(20)
            
            Text(isChanging ? "Big Rectangle" : "Small Rectangle")
                .bold()
                .font(.title)
            Rectangle()
                .fill(
                    isChanging ? Color.red : Color.purple
                )
                .frame(
                    width: isChanging ? 200 : 100,
                    height: isChanging ? 160 : 80)
                .cornerRadius(isChanging ? 20 : 0)
                .overlay (isChanging ? Text("Red") : Text("Purple"))
        }
    }
}

struct TernaryOperators_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperators()
    }
}
