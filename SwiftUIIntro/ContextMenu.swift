//
//  ContextMenu.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 10.05.2023.
//

import SwiftUI

struct ContextMenu: View {
    
    @State private var backgroundColor :Color = .purple
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house")
            Text("Context")
                .font(.title)
            Text("This is how to use Context Menu")
                .font(.headline)
                
        }
        .foregroundColor(.white)
        .padding(10)
        .background(backgroundColor).cornerRadius(15)
        .contextMenu{
            Button {
                backgroundColor = .gray
            } label: {
                Label("Gray ", systemImage: "cloud")
            }
            Button {
                backgroundColor = .yellow
            } label: {
                HStack{
                    Text("Yellow")
                    Image(systemName: "sun.min")
                }
            }
            Button {
                backgroundColor = .blue
            } label: {
                Text("Blue")
            }



        }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
