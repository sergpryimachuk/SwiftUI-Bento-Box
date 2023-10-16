//
//  Bento Box Template
//
//  Created by Ryan Klumph on 8/10/23.
//

import SwiftUI

struct C4Box: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: 155, height: 205)
                .foregroundColor(.gray.opacity(0.1))
            
            Image(systemName: "swift")
                .font(.system(size: 80))
                .scaledToFit()
                .gradientForeground(colors: [.orange, .red])
                .padding(.bottom, 40)
            
            Text("Swift\nlanguage")
                .padding(.top, 110)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    C4Box()
}
