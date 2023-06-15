//
//  ActionSheets.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 16.05.2023.
//

import SwiftUI

struct ActionSheets: View {
    @State private var showConfirmationDialog : Bool = false
    @State private var backgroundColor:Color = Color.white
    var body: some View {
        Button("Click me!"){
            showConfirmationDialog.toggle()
        }
        .frame(width: 300,height: 300)
        .background(backgroundColor)
        .confirmationDialog("Title message", isPresented: $showConfirmationDialog,titleVisibility: .visible) {
             Button("Red"){ backgroundColor = .red}
             Button("Blue"){backgroundColor = .blue}
             Button("Cancel",role: .cancel){}
            
        }
    }
}

struct ActionSheets_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheets()
    }
}
