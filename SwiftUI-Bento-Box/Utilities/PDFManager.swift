//

import SwiftUI

@Observable
final class PDFManager {
    
    @MainActor
    func saveAsPDF(view: any View) -> URL {
        
        // Render your desired view.
        let renderer = ImageRenderer(content: AnyView(view) )
        
        // Save to documents directory
        let url = URL.documentsDirectory.appending(path: "cv.pdf")
        
        // Start the rendering process
        renderer.render { size, context in
            
            // Tell SwiftUI our PDF should be the same size as the views we're rendering
            var box = CGRect(x: 0, y: 0, width: size.width, height: size.height)
            
            // 5: Create the CGContext for our PDF pages
            guard let pdf = CGContext(url as CFURL, mediaBox: &box, nil) else {
                return
            }
            
            // Start a new PDF page
            pdf.beginPDFPage(nil)
            
            // Render the SwiftUI view data onto the page
            context(pdf)
            
            // End the page and close the file
            pdf.endPDFPage()
            pdf.closePDF()
            
        }
        
        return url
    }
}
