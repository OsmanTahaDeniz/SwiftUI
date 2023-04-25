//
//  ForEachView.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 24.04.2023.
//

import SwiftUI

struct ForEachView: View {
    var body: some View {
        
        let data: [String] = []
        let _: String = "Hello"
        VStack {
            ForEach(data.indices) { index in
                Text("New İtem \(index)")
                 
            }
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 50,height: 50,alignment: .center)
                        .foregroundColor(.red)
                    Text("index: \(index)")
                  }
                }
            }
        }
    }


struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
