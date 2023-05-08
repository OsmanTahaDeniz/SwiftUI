//
//  PopOver.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 8.05.2023.
//

import SwiftUI

struct PopOver: View {
    
    @State var showSecondScreen : Bool = false
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
                
            
            VStack{
                Button("Button")
                    {
                        showSecondScreen.toggle()
                }
                    .font(.title)
                    .foregroundColor(.blue)
                Spacer()
          }
            //Method 1 -> Sheets
//            .sheet(isPresented: $showSecondScreen) {
//                NextScreen()
// }
                
           // Method 2 -> Transitions
//            ZStack{
//            if showSecondScreen {
//                    NewScreen(showSecondScreen:$showSecondScreen)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                        .padding(.top,80)
//                }
//            }
            .zIndex(2.0)
           // Method 3 -> Animations
                NewScreen(showSecondScreen: $showSecondScreen)
                    .padding(.top,80)
                    .offset(y:showSecondScreen ? 0 : UIScreen.main.bounds.height)
                    .animation(.default)
            }
        }
    }


struct NewScreen: View {
    
    @Binding var showSecondScreen:Bool
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.orange
                .ignoresSafeArea()
            Button {
                showSecondScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .padding(20)
                    .font(.title)
            }
        }
    }
}

struct PopOver_Previews: PreviewProvider {
    static var previews: some View {
        PopOver()
    }
}
