//
//  SwiftUI_Bento_BoxApp.swift
//  SwiftUI-Bento-Box
//
//  Created by Ryan Klumph on 8/12/23.
//

import SwiftUI

@main
struct SwiftUI_Bento_BoxApp: App {
    
    @State private var pdfManager = PDFManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    .toolbar {
                        ToolbarItem(placement: .primaryAction) {
                            ShareLink(item: pdfManager.saveAsPDF(view: ContentView())) {
                                Label("Export CV", systemImage: "square.and.arrow.up")
                            }
                        }
                    }
            }
        }
    }
}
