//
//  BackgroundAndOverlay.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 19.04.2023.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        Image(systemName: "message.fill")
            .font(.system(size: 50))
            .foregroundColor(.white)
            .background(
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 70, height: 70)
                    .shadow(color: .green, radius: 10, x: 0.0, y: 0.0)
                    .cornerRadius(20)
                    .overlay(
                    Circle()
                        .fill(Color.red)
                        .frame(width: 15,height: 15)
                        .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                        .overlay(
                            Text("3")
                                .font(Font.headline)
                                .foregroundColor(Color.white)
                            )
                    ,
                    alignment: .topTrailing
                    )
                    )
        
        //                        .background(
        //                //Color.red
        //                //LinearGradient(colors: [Color.red,Color.orange], startPoint: .leading, endPoint: .trailing)
        //                Circle()
        //                    .fill(LinearGradient(colors: [Color.purple,Color.orange], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 100, height: 100, alignment: .center)
        //                                )
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(colors: [Color.orange,Color.purple], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 150,height: 150,alignment: .center)
        //            )
//        Rectangle()
//            .frame(width: 150, height: 150, alignment: .center)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100),
//                alignment: .topLeading
//                )
//                    .background(
//                        Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 250, height: 250),
//                        alignment: .bottom
//                    )
    }
    }

struct BackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlay()
    }
}
