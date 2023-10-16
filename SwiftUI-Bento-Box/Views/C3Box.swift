//
//  Bento Box Template
//
//  Created by Ryan Klumph on 8/10/23.
//

import SwiftUI

struct C3Box: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20.0)
                    .frame(width: 320, height: 180)
                    .foregroundColor(.gray.opacity(0.1))
                HStack {
                    Image(.productStrategistCertificate)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                    VStack(alignment: .leading) {
                        Text("Product taste")
                            .font(.system(size: 30))
                            .bold()
                        Text("Great products start with a good taste")
                    }
                }
                .padding()
            }
            .frame(width: 320, height: 160)
        }
        .frame(width: 320, height: 160)
    }
}

#Preview {
    C3Box()
}
