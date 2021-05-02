//
// Created by Stephane Bressani on 02.05.21.
//

import Foundation
import SwiftUI

struct ScreenScaleChoice: View {
    @State var currentChoice: Scale;
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(scaleToString(enumScale: currentChoice, tonic: "E")).font(.system(size: 20)).bold()
                Spacer()
                Image(scaleToStringImage(enumScale: currentChoice, tonic: "E", theme: Theme.Light)).resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
        }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .background(Color(.green).opacity(0.2))
                .navigationBarTitle(scaleToString(enumScale: currentChoice,
                                                  tonic: "E"))
                .edgesIgnoringSafeArea(.bottom)
    }
}

struct ScreenScaleChoice_Previews: PreviewProvider {
    static var previews: some View {
        ScreenDetail()
    }
}
