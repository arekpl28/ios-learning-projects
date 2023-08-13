//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Arkadiusz Plumbaum on 13/08/2023.
//

import SwiftUI

// A SwiftUI representation of ScannerVC
struct ScannerView: UIViewControllerRepresentable {
    
    // Create and configure the underlying UIViewController
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    // Update the UIViewController when needed (no action required here)
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    // Create the Coordinator to act as a bridge between SwiftUI and ScannerVC
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    // Coordinator class to handle delegate methods from ScannerVC
    final class Coordinator: NSObject, ScannerVCDelegate {
        func didFind(barcode: String) {
            print(barcode)
        }
        
        // Handle camera-related errors
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
    }
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView()
    }
}
