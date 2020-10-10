///**
/**

DrawingDocApp
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 10/10/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

struct DrawingWrapper: UIViewControllerRepresentable {
    typealias UIViewControllerType = DrawingViewController
    
    var manager: DrawingManager
    var id: UUID
    
    func makeUIViewController(context: Context) -> DrawingViewController {
        let viewController = DrawingViewController()
        viewController.drawingData = manager.getData(for: id)
        viewController.drawingChanged = { data in
            manager.update(data: data, for: id)
        }
        
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: DrawingViewController, context: Context) {
        uiViewController.drawingData = manager.getData(for: id)
    }
}
