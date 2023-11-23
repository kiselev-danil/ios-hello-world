import Foundation
import SwiftUI

struct PaleteUnit: View {
    var paleteImage = "link"
    var paleteText = "placeholder"
    var imageHeight : CGFloat = 24
    var imageWidth : CGFloat = 24
    var body: some View {
        VStack {
            Image(paleteImage).frame(width: imageWidth,height: imageHeight)
                .padding(imageWidth)
                .background(Color("search_bar_background"))
                .cornerRadius(100)
            Spacer().frame(height: 8)
            Text(paleteText).foregroundColor(Color("secondaryFontColor"))
        }
    }
}

struct PaleteUnit_Previews: PreviewProvider {
    static var previews: some View {
        PaleteUnit()
    }
}
