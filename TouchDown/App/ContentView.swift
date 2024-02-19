//
//  ContentView.swift
//  TouchDown
//
//  Created by 鈴木航太 on 2024/02/18.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Propaty
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
        
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack {
                        FeatureTabView()
                            .padding(.vertical, 20)
                            .frame(minHeight: 280)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                        }
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                    }
                })
                
               
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: Zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
