///**
/**

DrawingDocApp
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 10/9/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import Foundation

struct DrawingDocument: Identifiable {
    let id: UUID
    var data: Data
    var name: String
}
