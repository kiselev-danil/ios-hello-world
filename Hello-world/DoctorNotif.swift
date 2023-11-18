//
//  File.swift
//  Hello-world
//
//  Created by Admin on 16.11.2023.
//

import Foundation
import SwiftUI

struct DoctorNotif : View {
    var framePadding: CGFloat = 20
    var doctorName = "Dr. Place Holder"
    var doctorSpeciality = "General Doctor"
    var doctorDate = "Sunday, 12 June"
    var doctorTime = "11:00 - 12:00 AM"
    
    
    var body: some View {
        VStack {	
            HStack {
                Image("doctor photo").resizable().aspectRatio(contentMode:.fit).frame(width: 48).background(Color.white).clipShape(Circle())
                Spacer()
                VStack(alignment: .leading, spacing: 16) {
                    Text(doctorName).font(
                        Font.custom("Poppins", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(.white)
                    Text(doctorSpeciality)
                        .font(Font.custom("Poppins", size: 14))
                        .foregroundColor(Color(red: 0.8, green: 0.88, blue: 1))
                }
                Spacer()
                Image("arrow-right").frame(width: 24, height: 24)
            }.frame(height: 48)
            
            Divider().overlay(Color.white.opacity(0.5))
                .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
            HStack {
                HStack {
                    Image("calendar-2")
                    Spacer().frame(width:8)
                    Text(doctorDate)
                }.frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    Image("clock")
                    Spacer().frame(width:8)
                    Text(doctorTime)
                }.frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .padding(framePadding)
        .frame(width: 327, alignment: .top)
        .background(Color(red: 0.28, green: 0.58, blue: 1))
        .cornerRadius(12)
    }
}

struct DoctorNotif_Previews: PreviewProvider {
    static var previews: some View {
        DoctorNotif(doctorName: "Dr. Place Holder")
    }
}
