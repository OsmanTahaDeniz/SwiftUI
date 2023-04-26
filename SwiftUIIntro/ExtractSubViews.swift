//
//  ExtractSubViews.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 26.04.2023.
//

import SwiftUI

struct ExtractSubViews: View {
    var body: some View {
        ZStack {
            //Background
            Color.mint.ignoresSafeArea()
            ContentLayer
        }
    }
    var ContentLayer: some View {
        HStack{
            MySubView(title: "Apple", count: 1, color: .red)
            MySubView(title: "Banana", count: 2, color: .yellow)
            MySubView(title: "Orange", count: 3, color: .orange)
        }
    }
}
struct ExtractSubViews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViews()
    }
}
struct MySubView: View {
    
    let title:String
    let count:Int
    let color:Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
