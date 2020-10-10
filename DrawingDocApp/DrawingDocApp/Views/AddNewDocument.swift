///**
/**

DrawingDocApp
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 10/10/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct AddNewDocument: View {
    @ObservedObject var manager: DrawingManager
    @State private var documentName: String = ""
    @Binding var addShown: Bool
    
    var body: some View {
        VStack {
            Text("Enter document name:")
            
            TextField("Enter doc name here...", text: $documentName, onCommit: {
                save(fileName: documentName)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Create") {
                save(fileName: documentName)
            }
        }.padding()
    }
    
    private func save(fileName: String) {
        manager.addData(doc: DrawingDocument(id: UUID(), data: Data(), name: fileName))
        addShown.toggle()
    }
}
