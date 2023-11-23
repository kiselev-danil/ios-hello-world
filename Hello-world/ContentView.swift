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
        ScrollView {
            VStack {
                HeaderView()
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
                Spacer().frame(height: 32)
                DoctorNotification()
                Spacer().frame(height: 20)
                SearchBar(searchBarText: "Search doctor or health issue")
                Spacer().frame(height: 24)
                ThemesPalete(minPaleteSpace: 13, maxPaleteSpace: 100)
                Spacer().frame(height: 32)
                HStack{
                    Text("Near Doctor").font(Font.custom("Poppins", size: 16).weight(.semibold))
                        .foregroundColor(Color("primaryFontColor"))
                        Spacer()
                }
                DoctorCards()
            }
            .padding(24)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().background(Color(.white))
    }
    
}
