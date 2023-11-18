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
                HeaderView()
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
                Spacer().frame(height: 32)
                DoctorNotif()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
