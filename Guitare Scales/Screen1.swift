//
// Created by Stephane Bressani on 02.05.21.
//

import Foundation

import SwiftUI

struct Screen1: View {
    var scale = [Scale.Major, Scale.Minor, Scale.MajorPentagonic, Scale
            .PhrygianDominant, Scale.Dorian, Scale.Dorian4, Scale.Mixolydian]
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Scales in E")
                        .font(.system(size: 20))
                        .bold()
                Spacer()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight:
                        0, maxHeight: .infinity, alignment: .topLeading)
            }
            List(scale, id: \.self) { data in
                NavigationLink(destination: ScreenScaleChoice(currentChoice:
                                                              data
                )) {
                    Text(scaleToString(enumScale: data, tonic: "E"))
                }
                Spacer()
            }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    .background(Color(.yellow).opacity(0.2))
                    .navigationBarTitle("Guitare scales")
        }
    }
}
