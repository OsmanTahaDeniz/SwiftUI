//
//  Colors.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 17.04.2023.
//

import SwiftUI

struct Colors: View {
    //let myColor = Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
    // Color Literal
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
            //Color.primary
            //    myColor
            //   Color(uiColor: .secondarySystemBackground)//UIKit color
            //UIColor System Backgrounds changes with light and dark mode
                Color("CustomColor")
            )
        .frame(width: 300, height: 200)
        //.shadow(radius: 10)
        .shadow(color: Color("CustomColor").opacity(0.4), radius: 5, x: -20, y: -20)
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}
