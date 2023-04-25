//
//  LazyGrid.swift
//  SwiftUIIntro
//
//  Created by Osman Taha Deniz on 24.04.2023.
//

import SwiftUI

struct LazyGrid: View {
    
    let columns : [GridItem] = [
        GridItem(GridItem.Size.fixed(50)),
        GridItem(GridItem.Size.fixed(50)),
        GridItem(GridItem.Size.fixed(50)),
        GridItem(GridItem.Size.fixed(50)),
        ]
    
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .fill(Color.yellow)
                .frame(height: 300)
            
            LazyVGrid(columns: columns) {
                ForEach(0..<100) { index in
                    Rectangle()
                        .fill(Color.red)
                        .frame(height:50)
                    
                }
                
            }
        }
        
    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrid()
    }
}
