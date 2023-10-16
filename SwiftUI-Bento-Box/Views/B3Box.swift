//
//  Bento Box Template
//
//  Created by Ryan Klumph on 8/10/23.
//

import SwiftUI

struct B3Box: View {
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: 400, height: 240)
                .foregroundColor(.gray.opacity(0.1))
            
            VStack {
                Text("Work experience")
                    .font(.system(size: 24))
                    .bold()
                    .padding(.bottom)
                HStack {
                    Text("2022")
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("**TeeJet**, *Orléans, France*")
                        Text("Junior digital marketing & com. assistant")
                    }
                }
                Divider()
                
                HStack {
                    Text("2021")
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("**Sencrop**, *Lille, France*")
                        Text("Product marketing intern")
                    }
                }
                Divider()
                
                HStack {
                    Text("2019")
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("**Vodafone**, *Kyiv, Ukraine*")
                        Text("Product management intern")
                    }
                }
            }
            .frame(width: 360, height: 160)
            
            //            RoundedRectangle(cornerRadius: 20.0)
            //                .foregroundColor(.white)
            //                .offset(x: 0, y: 20)
        }
    }
}

#Preview {
    B3Box()
}
