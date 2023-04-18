//
//  TextView.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 17.04.2023.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift")//.lowercased()
            .font(.headline)
            .fontWeight(.semibold)
            //.italic()
            //.kerning(5)
            .foregroundColor(.blue)
            .multilineTextAlignment(.leading)
            .font(.system(size: 10,weight: .regular ,design: .rounded))
            .baselineOffset(10) //line spacing
            //.padding(10)
            //.strikethrough(true,color:Color.red)
            //.underline(color:Color.brown)
            .frame(width: 200,height: 300,alignment: .leading)
            .minimumScaleFactor(0.3)    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
