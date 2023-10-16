//
//  Bento Box Template
//
//  Created by Ryan Klumph on 8/10/23.
//

import SwiftUI

struct B1Box: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: 270, height: 170)
                .foregroundColor(.gray.opacity(0.1))
            
            VStack(alignment: .center) {
                Spacer()
                Text("My apps")
                    .font(.system(size: 30))
                    .bold()
                
                HStack {
                    Image(.sender)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .cornerRadius(20)
                        .rotationEffect(.degrees(-25))
                    Image(.nehoda)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .cornerRadius(20)
                        .padding(.horizontal, 6)
                    Image(.mak)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .cornerRadius(20)
                        .rotationEffect(.degrees(25))
                }
            }
            .offset(y: -20)
        }
        .frame(width: 270, height: 170)
    }
}

#Preview {
    B1Box()
}
