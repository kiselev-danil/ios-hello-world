//
//  Header.swift
//  Hello-world
//
//  Created by Admin on 18.11.2023.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hello,")
                    .font(Font.custom("Poppins", size: 16))
                    .foregroundColor(Color("secondaryFontColor"))
                Text("Hi James").font(
                    Font.custom("Poppins", size: 20)
                        .weight(.bold)
                )
                .foregroundColor(Color("primaryFontColor"))
            }
            Spacer()
            ProfileImage()
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .padding(.leading, 24)
            .padding(.trailing, 24)
    }
}
