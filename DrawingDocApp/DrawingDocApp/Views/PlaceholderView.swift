///**
/**

DrawingDocApp
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 10/10/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct PlaceholderView: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("Let's draw something")
                .font(.largeTitle)
            
            Text("Select or create new drawing from left menu")
            
            Image(systemName: "scribble")
                .font(.largeTitle)
        }.foregroundColor(.gray)
    }
}
