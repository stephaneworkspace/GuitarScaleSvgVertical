//
// Created by Stephane Bressani on 02.05.21.
//

import SwiftUI

struct Screen2: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Coded by bressani.dev, using open source: Swift (Lang + https://github.com/chicio/SwiftUI-CustomTabBar), Rust (ukebox, svg, strum)")
                        .font(.system(size: 20))
                        .bold()
                Spacer()
            }
            Spacer()
        }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .background(Color(.purple).opacity(0.2))
                .navigationBarTitle("Screen 2")
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}