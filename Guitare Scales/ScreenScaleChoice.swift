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
                switch (self.currentChoice) {
                case Scale.Major:
                    Text("Scale Major E")
                            .font(.system(size: 20))
                            .bold()
                    Spacer()
                    Image("ScaleLightMajorE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                case Scale.Minor:
                    Text("Scale Minor E")
                            .font(.system(size: 20))
                            .bold()
                    Spacer()
                    Image("ScaleLightMinorE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                case Scale.PentagonicMajor:
                    Text("Scale Pentagonic Major E")
                            .font(.system(size: 20))
                            .bold()
                    Spacer()
                    Image("ScaleLightPentagonicE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                case Scale.PhrygianDominant:
                    Text("Scale Phrygian E")
                            .font(.system(size: 20))
                            .bold()
                    Spacer()
                    Image("ScaleLightPhrygianDominantE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                case Scale.Dorian:
                    Text("Scale Dorian E")
                            .font(.system(size: 20))
                            .bold()
                    Spacer()
                    Image("ScaleLightDorianE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                case Scale.Dorian4:
                    Text("Scale Dorian4 E")
                            .font(.system(size: 20))
                            .bold()
                    Spacer()
                    Image("ScaleLightDorian4E")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                case Scale.Mixolydian:
                    Text("Scale Mixolydian E")
                            .font(.system(size: 20))
                            .bold()
                    Spacer()
                    Image("ScaleLightMixolydianE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                }
            }
            Spacer()
        }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .background(Color(.green).opacity(0.2))
                .navigationBarTitle(scaleToString(enumScale: self.currentChoice))
                .edgesIgnoringSafeArea(.bottom)
    }
}

struct ScreenScaleChoice_Previews: PreviewProvider {
    static var previews: some View {
        ScreenDetail()
    }
}
