//
//  BrandGridView.swift
//  TouchDown
//
//  Created by 鈴木航太 on 2024/02/19.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                    
                }
            }
            .frame(height: 200)
            .padding(15)
    
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
