///**
/**

DrawingDocApp
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 10/9/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct ContentView: View {
    @ObservedObject var manager = DrawingManager()
    @State private var addNewShown = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(manager.docs) { doc in
                    NavigationLink(destination: DrawingWrapper(manager: manager, id: doc.id),
                    label: { Text(doc.name) })
                }.onDelete(perform: manager.delete)
            }.navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Add"){
                self.addNewShown.toggle()
            })
            .sheet(isPresented: $addNewShown, content: {
                AddNewDocument(manager: manager, addShown: $addNewShown)
            })
            
            PlaceholderView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
