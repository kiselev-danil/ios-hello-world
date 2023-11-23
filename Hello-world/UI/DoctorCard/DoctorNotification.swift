//
//  File.swift
//  Hello-world
//
//  Created by Admin on 16.11.2023.
//

import Foundation
import SwiftUI

struct DoctorNotification : View {
    var framePadding: CGFloat = 20
    var doctorName = "Dr. Place Holder"
    var doctorSpeciality = "General Doctor"
    var doctorDate = "Sunday, 12 June"
    var doctorTime = "11:00 - 12:00 AM"
    var notificationMinWidth: CGFloat = 327
    var notificationMaxWidth: CGFloat = 1000
    
    var body: some View {
        VStack {	
            HStack {
                DoctorProfile(doctorName: doctorName,doctorSpeciality: doctorSpeciality, nameFontColor: Color("notifNameFontColor1"),
                              specialityFontColor: Color("notifSpecialisationFontColor1"))
                Spacer()
                Image("arrow-right").frame(width: 24, height: 24)
            }.frame(height: 48)
            
            Divider().overlay(Color("notificationDividerColor"))
                .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
            HStack {
                HStack {
                    Image("calendar-2")
                    Spacer().frame(width:8)
                    Text(doctorDate).foregroundColor(.white)
                }.frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    Image("clock")
                    Spacer().frame(width:8)
                    Text(doctorTime).foregroundColor(.white)
                }.frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .padding(framePadding)
        .background(Color(red: 0.28, green: 0.58, blue: 1))
        .cornerRadius(12)
        .frame(minWidth: notificationMinWidth,maxWidth: notificationMaxWidth)
    }
}

struct DoctorNotification_Previews: PreviewProvider {
    static var previews: some View {
        DoctorNotification(doctorName: "Dr. Place Holder", notificationMinWidth: 327, notificationMaxWidth: 327)
    }
}
