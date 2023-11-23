import Foundation
import SwiftUI

struct SearchBar: View {
    var searchBarText = "Search"
    var body: some View {
        HStack{
            Image("search-normal")
            Spacer().frame(width: 12)
            Text(searchBarText).foregroundColor(Color("secondaryFontColor"))
            Spacer()
        }.padding(16)
            .background(Color("search_bar_background"))
            .cornerRadius(12)
//    red: 0.53, green: 0.59, blue: 0.73
    }
}

struct SearchBar_Previews: PreviewProvider {    
    static var previews: some View {
        SearchBar(searchBarText: "Search doctor or health issue")
    }
}

