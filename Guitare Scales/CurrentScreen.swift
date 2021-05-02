//
// Created by Stephane Bressani on 02.05.21.
//

import SwiftUI

struct CurrentScreen: View {
    @Binding var currentView: Tab

    var body: some View {
        VStack {
            if self.currentView == .TabScale {
                Screen1()
            } else {
                Screen2()
            }
        }
    }
}

struct CurrentScreen_Previews: PreviewProvider {
    static var previews: some View {
        CurrentScreen(currentView: .constant(.TabScale))
    }
}
