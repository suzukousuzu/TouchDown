//
//  FooterView.swift
//  TouchDown
//
//  Created by 鈴木航太 on 2024/02/18.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("fjalfjdlsfjsdlkfjsdlfjsa;fdjsf;ldsjfl;sjfslfjsl;fjdslf;jsdfldjsflsdjfsdl;fjdslfjdslfjsdlfsdjfdlsfjdslkfjdslkfjdslfsjaf;sljf")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(3)
            
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(2)
            
            Text("copy right afsfjslfjsflsjfskfjsflfljfafjjfljalfdjl")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } // :Vstqack
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
