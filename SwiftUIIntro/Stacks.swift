//
//  Stacks.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 19.04.2023.
//

import SwiftUI

struct Stacks: View {
    // VStack -> Vertical Stack
    // HStack -> Horizontal Stack
    // ZStack -> Z Index
    var body: some View {
        //nested VStack , HStack , ZStack
//        ZStack (alignment: .top) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500)
//            VStack(alignment: .leading, spacing: 10) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 200, height: 200)
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//                HStack(alignment: .center) {
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 70, height: 70)
//                    Rectangle()
//                        .fill(Color.brown)
//                        .frame(width: 90,height: 90)
//                    Rectangle()
//                        .fill(Color.gray)
//                        .frame(width: 60, height: 60)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
        //ZStack and Background works similar
        //ZStack -> Complex
        //Background -> Basic (1,2 or 3 object)
        VStack (spacing: 50){
            ZStack{
                Circle()
                    .fill(Color.black)
                    .frame(width: 100, height: 100)
                Text("8")
                    .font(.title)
                    .foregroundColor(Color.white)
                
            }
            Text("8")
                .font(.title)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(Color.black)
                        .frame(width: 100,height: 100)
                )
        }
        
        
        
        
        
        
        
        
        
        
        
        //VStack(alignment: .leading, spacing: 0, content: {
        //HStack(aligment: .bottom, spacing: 0, content: {
        //ZStack (alignment: .trailing ,content: {
         //   Rectangle()
          //      .fill(Color.blue)
          //    .frame(width: 200, height: 200, alignment: .center)
          //  Rectangle()
            //    .fill(Color.yellow)
              //  .frame(width: 160, height: 160, alignment: .center)
           // Rectangle()
           //     .fill(Color.red)
           //     .frame(width: 140, height: 140, alignment: .center)
        } //)
        
//        //HStack  Default stack with spacing
//        //ZStack
//        VStack {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100, alignment: .center)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100, alignment: .center)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100, alignment: .center)
//        }
        
 //   )}
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
