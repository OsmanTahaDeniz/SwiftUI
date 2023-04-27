//
//  ConditionalStatements.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 27.04.2023.
//

import SwiftUI

struct ConditionalStatements: View {
    
    @State var ShowRectangle:Bool = false
    @State var ShowCircle:Bool = false
    @State var isLoading:Bool = false
    
    var body: some View {
        VStack{
            Button("Show Circle: \(ShowCircle.description)") {
                ShowCircle.toggle()
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            
            Button("Show Rectangle: \(ShowRectangle.description)"){
                ShowRectangle.toggle()
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            Button("isLoading: \(isLoading.description)") {
                isLoading.toggle()
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            
            if isLoading  {
                ProgressView()
            }
            else {
                
            }
            
            if ShowCircle  {
                Circle()
                    .fill(Color.red)
                    .frame(width: 100,height: 100)
                    .padding()
            }
            if ShowRectangle  {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100,height: 100)
                    .padding()
            }
            if ShowCircle && ShowRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.blue)
                    .frame(width:100,height: 100)
            }
                        
            
        }
    }
}

struct ConditionalStatements_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalStatements()
    }
}
