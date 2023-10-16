//
//  Bento Box Template
//
//  Created by Ryan Klumph on 8/10/23.
//

import SwiftUI

struct Framework: Identifiable {
    var name: String
    var comment: String
    var proficiency: Double
    var id: String { name }
}

struct A2Box: View {
    
    let frameworks: [Framework] = [
        .init(name: "SwiftUI", comment: "Declarative programming is just awesome", proficiency: 0.9),
        .init(name: "Swift Concurrency", comment: "Much better API than Combine", proficiency: 0.8),
        .init(name: "Core Data", comment: "Some people hate it, perhaps they don't know @PropertyWrappers ", proficiency: 0.8),
        .init(name: "WidgetKit", comment: "Made widgets for all of my apps, SwiftUI 🤩", proficiency: 0.8),
        .init(name: "Git", comment: "The backbone of all of my projects", proficiency: 0.9)
    ]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .foregroundColor(.gray.opacity(0.1))
            
            VStack {
                Label("Frameworks & tech stack", systemImage: "hammer.fill")
                    .gradientForeground(colors: [.mint, .blue, .cyan])
                    .font(.system(size: 18))
                    .bold()
                
                VStack {
                    ForEach(frameworks) { framework in
                        GroupBox(framework.name) {
                            VStack(alignment: .leading) {
                                Text(framework.comment)
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                                Gauge(value: framework.proficiency, in: 0...1) { }
                                    .gradientForeground(colors: [.mint, .blue, .cyan])
                            }
                        }
                        .backgroundStyle(.white)
                        .padding(.horizontal)
                    }
                }
            }
        }
        .frame(width: 320, height: 600)
    }
}

#Preview {
    A2Box()
}
