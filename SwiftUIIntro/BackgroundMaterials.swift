//
//  BackgroundMaterials.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 20.06.2023.
//

import SwiftUI

struct BackgroundMaterials: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 30,height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 400)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            //thinMaterial
            //thickMaterial
            //ultraThickMaterial
        }
        .ignoresSafeArea()
        .background(
            Image("wallpaper")
                .frame(width: 300,height: 500)
                .scaledToFit()
        )
    }
}

struct BackgroundMaterials_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterials()
    }
}
