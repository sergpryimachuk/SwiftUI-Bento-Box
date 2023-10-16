//
//  Bento Box Template
//
//  Created by Ryan Klumph on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            // First Column
            VStack(alignment: .leading) {
//                A1Box()
//                    .offset(y: 4)
                A2Box()
//                    .offset(y: -5)
            }
            
            // Second Column
            VStack(alignment: .leading) {
                HStack {
                    B1Box()
                    B2Box()
                }
                CenterImage()
                B3Box()
            }
            
            // Third Column
            VStack(alignment: .leading) {
                HStack {
                    C1BoxPhoto()
                    C2Box()
                }
                .offset(y: -8)
                C3Box()
                    .offset(y: -2)
                HStack {
                    C4Box()
                    C5Box()
                }
                .offset(y: 8)
            }
        }
        .overlay(alignment: .bottomTrailing) {
            Text("p.s. This CV made in SwiftUI, check out the repo 😊\nFor more details visit my LinkedIn profile.")
                .fontDesign(.monospaced)
                .foregroundStyle(.secondary)
                .offset(y: 50)
        }
        .padding(.all, 50)
    }
}

#Preview {
    ContentView()
}
