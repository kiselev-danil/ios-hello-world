import Foundation
import SwiftUI

struct DoctorCards: View {
    var body: some View {
        VStack{
            DoctorProfile()
        }
        .background(Color("search_bar_background"))
    }
}

struct DoctorCards_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCards()
    }
}
