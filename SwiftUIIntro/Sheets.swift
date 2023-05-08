//
//  Sheets.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 3.05.2023.
//

import SwiftUI

struct Sheets: View {
    
    @State var showSheet :Bool = false
    
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(20)
                    .background(Color.orange.cornerRadius(20))
            }
//            .fullScreenCover(isPresented: $showSheet, content:{ SecondScreen()
//
//            })
            .sheet(isPresented: $showSheet, content:{
                SecondScreen()
            })

            
            
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode)  var presentationMode
    
    var body: some View {
        
                
        ZStack(alignment:.topLeading) {
            Color.red
                .ignoresSafeArea()
            Button (action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(20)
                    .background(Color.indigo.cornerRadius(20))
            })
        }
    }
    
    struct Sheets_Previews: PreviewProvider {
        static var previews: some View {
            Sheets()
            
        }
    }
}
