//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Arkadiusz Plumbaum on 13/08/2023.
//

import SwiftUI

// A SwiftUI representation of ScannerVC
struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?
    
    // Create and configure the underlying UIViewController
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    // Update the UIViewController when needed (no action required here)
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    // Create the Coordinator to act as a bridge between SwiftUI and ScannerVC
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    // Coordinator class to handle delegate methods from ScannerVC
    final class Coordinator: NSObject, ScannerVCDelegate {
        
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode
        }
        
        // Handle camera-related errors
        func didSurface(error: CameraError) {
            switch error {
            case .invalidDeviceInput:
                scannerView.alertItem = AlertContext.invalidDeviceInput
            case .invalidScannedValue:
                scannerView.alertItem = AlertContext.invalidScannedTupe
            }
        }
    }
}
