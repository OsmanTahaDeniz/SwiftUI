//
//  Navigation.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 8.05.2023.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationView{
            ScrollView{
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
            }
            .navigationTitle("Title")
            .navigationBarTitleDisplayMode(.automatic)
            
            .toolbar {
                ToolbarItemGroup(placement:ToolbarItemPlacement.navigationBarLeading) {
                    Image(systemName: "person.fill")
                    
                }
                ToolbarItemGroup(placement:ToolbarItemPlacement.navigationBarTrailing) {
                    NavigationLink(destination: SecondPage()) {
                        Image(systemName: "gear")
                    }
                    .tint(.red)
            }

                
            }
            }
        }
    }


struct SecondPage: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
                .navigationTitle("Back")
                .toolbar(.hidden)
            
            VStack{
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                   
                    }
                NavigationLink("Third page") {
                    Text("Third page")
                }
            
                
            }
           }
        }
    }


struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
