//
//  ContentView.swift
//  Hello-world
//
//  Created by Admin on 16.11.2023.
//

import SwiftUI

struct ContentView: View {
    var appPadding : CGFloat = 24
    var body: some View {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Hello,")
                          .font(Font.custom("Poppins", size: 16))
                          .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                        Text("Hi James").font(
                            Font.custom("Poppins", size: 20)
                            .weight(.bold)
                            )
                            .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
                    }
                    Spacer()
                    ProfileImage()
                }.padding(.leading, appPadding)
                 .padding(.trailing, appPadding)
                DoctorNotif()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
