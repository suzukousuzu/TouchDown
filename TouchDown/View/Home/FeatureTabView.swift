//
//  FeatureTabView.swift
//  TouchDown
//
//  Created by 鈴木航太 on 2024/02/18.
//

import SwiftUI

struct FeatureTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeatureItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            .previewDevice("iphone 12 pro")
            .background(Color.gray)
    }
}
