//
//  Bento Box Template
//
//  Created by Ryan Klumph on 8/10/23.
//

import SwiftUI

struct C1BoxPhoto: View {
    var body: some View {
        ZStack {
            Image(.serhiiSquare)
                .resizable()
                .scaledToFill()
                .frame(width: 155, height: 205)
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
        }
    }
}

#Preview {
    C1BoxPhoto()
}
