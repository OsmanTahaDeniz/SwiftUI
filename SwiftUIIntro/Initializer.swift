//
//  Initializer.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 24.04.2023.
//

import SwiftUI

struct Initializer: View {
    
    let backgroundColor : Color
    let title : String
    let count : Int
    
    init(count: Int ,fruit:Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        }
        else {
            self.backgroundColor = .orange
            self.title = "Orange"
        }
    }
        enum Fruit {
            case apple
            case orange
    }
    
    var body: some View {
        VStack (spacing: 10){
            Text("\(count)")
                .foregroundColor(Color.white)
                .font(Font.title)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: 120,height: 120)
        .background(backgroundColor)
        .cornerRadius(30)
    
    }
}

struct Initializer_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            Initializer(count: 20, fruit: .orange)
            Initializer(count: 30, fruit: .apple)
        }
    }
}
