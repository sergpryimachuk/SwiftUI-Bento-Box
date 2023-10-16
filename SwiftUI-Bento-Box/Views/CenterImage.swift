//
//  Bento Box Template
//
//  Created by Ryan Klumph on 8/10/23.
//

import SwiftUI

struct CenterImage: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
                .frame(width: 400, height: 175)
                .cornerRadius(20)
            
            VStack(spacing: 15) {
                Text("Serhii Pryimachuk")
                    .font(.system(size: 43))
                    .bold()
                    .gradientForeground(colors: [Color.blue, Color.green])
                
                Text("Switched from marketing to iOS development, *because I love it*.")
                    .font(.system(size: 24))
                    .multilineTextAlignment(.center)
            }
        }
        .frame(width: 400, height: 170)
    }
}

#Preview {
    CenterImage()
}
