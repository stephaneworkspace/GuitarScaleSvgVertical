//
// Created by Stephane Bressani on 02.05.21.
//

import SwiftUI

struct ScreenModal: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Screen 2")
                Spacer()
            }
            Spacer()
        }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .background(Color(.red).opacity(0.2))
                .edgesIgnoringSafeArea(.all)
    }
}

struct ScreenModal_Previews: PreviewProvider {
    static var previews: some View {
        ScreenModal()
    }
}