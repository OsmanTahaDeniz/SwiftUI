//
//  AsyncImages.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 20.06.2023.
//

import SwiftUI

struct AsyncImages: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage): returnedImage
                    .resizable()
                    .frame(width: 200,height: 200)
                    .scaledToFit()
                    .cornerRadius(15)
            case .failure:
                Image(systemName:"questionmark")
                    .font(.title)
            default:
                Image(systemName:"questionmark")
                    .font(.headline)
            }
        }
        
//        AsyncImage(url: url, content:{returnedImage in returnedImage
//                .resizable()
//                .frame(width: 150,height: 150)
//                .scaledToFit()
//                .cornerRadius(15)
//        },
//                   placeholder: {
//            ProgressView()
//        })
        
        
    }
}

struct AsyncImages_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImages()
    }
}
