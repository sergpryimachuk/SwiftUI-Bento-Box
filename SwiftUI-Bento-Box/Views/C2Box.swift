//
//  Bento Box Template
//
//  Created by Ryan Klumph on 8/10/23.
//

import SwiftUI

struct C2Box: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: 155, height: 205)
                .foregroundColor(.gray.opacity(0.1))
            
            VStack(spacing: 10) {
                Image(systemName: "flag.2.crossed")
                    .font(.system(size: 40))
                    .gradientForeground(colors: [.blue, .yellow])
                
                Text("Languages")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    Text("🇫🇷 Intermediate")
                    Text("🇬🇧 Advanced")
                    Text("🇺🇦 Native")
                }
            }
        }
    }
}

#Preview {
    C2Box()
}
