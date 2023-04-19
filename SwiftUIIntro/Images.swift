//
//  Images.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 19.04.2023.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("google")
            .renderingMode(.template)
        //to edit image set renderingMode to template
        // only works good with transparent images
        // rendering mode can change from image assets
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFill()
            //.scaledToFill()
            .frame(width: 200, height: 200)
            .foregroundColor(.green)
            //.clipped()
            //.cornerRadius(130)
            //.clipShape(
                //Circle()
                //Rectangle()
                //Ellipse()
                //RoundedRectangle(cornerRadius: 30)
                //)
        
            
        
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
