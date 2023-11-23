import Foundation
import SwiftUI

struct ThemesPalete: View {
    var seatchBarText = "Search doctor or health issue"
    var minPaleteSpace: CGFloat = 24
    var maxPaleteSpace: CGFloat = 13
    var body: some View {
        HStack {
            PaleteUnit(paleteImage: "sun", paleteText: "Covid 19")
            Spacer().frame(minWidth: minPaleteSpace, maxWidth: maxPaleteSpace)
            PaleteUnit(paleteImage: "profile-add", paleteText: "Doctor")
            Spacer().frame(minWidth: minPaleteSpace, maxWidth: maxPaleteSpace)
            PaleteUnit(paleteImage: "link", paleteText: "Medicine")
            Spacer().frame(minWidth: minPaleteSpace, maxWidth: maxPaleteSpace)
            PaleteUnit(paleteImage: "hospital", paleteText: "Hospital")
            
        }
    }
}

struct ThemesPalete_Previews: PreviewProvider {
    static var previews: some View {
        ThemesPalete(maxPaleteSpace: 100).padding(24)
    }
}
