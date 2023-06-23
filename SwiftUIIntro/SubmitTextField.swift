//
//  SubmitTextField.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 23.06.2023.
//

import SwiftUI

struct SubmitTextField: View {
    
    @State private var text1:String = ""
    @State private var text2:String = ""
    @State private var text3:String = ""
    
    var body: some View {
        
        VStack (spacing:30){
            TextField("placeholder", text: $text1)
                .submitLabel(.done)
                .onSubmit {
                    print("Something printed")
            }
            TextField("placeholder", text: $text2)
                .submitLabel(.next)
                .onSubmit {
                    print("Something printed")
            }
            TextField("placeholder", text: $text3)
                .submitLabel(.send)
                .onSubmit {
                    print("Something printed")
            }
            
        }
    }
}

struct SubmitTextField_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextField()
    }
}
