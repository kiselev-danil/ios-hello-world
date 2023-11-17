//
//  File.swift
//  Hello-world
//
//  Created by Admin on 16.11.2023.
//

import Foundation
import SwiftUI

struct DoctorNotif : View {
    var framePadding :CGFloat = 20
    var body : some View {
        VStack{
            HStack {
                Image("doctor photo").resizable().aspectRatio(contentMode:.fit).frame(width: 58).background(Color.white).clipShape(Circle())
                Spacer()
                VStack(alignment: .leading, spacing: 16) {
                    Text("Dr.Imran Syahir").font(
                        Font.custom("Poppins", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(.white)
                    Text("General Doctor")
                        .font(Font.custom("Poppins", size: 14))
                        .foregroundColor(Color(red: 0.8, green: 0.88, blue: 1))
                }
                Spacer()
                Image("arrow-right").frame(width: 24, height: 24)
            }
            
            Divider().overlay(Color.white.opacity(0.4))
                .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
            Spacer()
        }
        .padding(framePadding)
        .frame(width: 327, alignment: .top)
        .background(Color(red: 0.28, green: 0.58, blue: 1))
        .cornerRadius(12)
    }
}

struct DoctorNotif_Previews: PreviewProvider {
    static var previews: some View {
        DoctorNotif()
    }
}
