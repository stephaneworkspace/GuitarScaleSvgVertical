//
//  ContentView.swift
//  Guitare Scales
//
//  Created by Stephane Bressani on 01.05.21.
//
//

import SwiftUI

struct ContentView: View {
    @State private var animating = false
    var body: some View {
        /*
        Image("pentacle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotationEffect(animating ? Angle.degrees(360): .zero)
                .animation(Animation .linear(duration: 2)
                .repeatForever(autoreverses: false)
                )
        .onAppear {self.animating = true}*/
        NavigationView {
            List {
                NavigationLink(
                        destination: DestinationPageView(color: .purple)
                ) {
                    Text("Purple Page")
                }
                NavigationLink(
                        destination: DestinationPageView(color: .pink)
                ) {
                    Text("Pink Page")
                }
                NavigationLink(
                        destination: DestinationPageView(color: .orange)
                ) {
                    Text("Orange Page")
                }
            }
            Text("Select a color page from the links.")
        }
        TabBar(items: [
            (Image(systemName: "tray"), Text("Inbox")),
            (Image(systemName: "archivebox"), Text("Archive")),
            (Image(systemName: "doc.text"), Text("Drafts"))
        ]).padding()
          .border(Color.blue)
    }
}

struct TabBar: View {
    var items: [(Image, Text)]
    @State var selectedIndex: Int = 0

    private func item(at index: Int) -> some View {
        Button(action: {
            withAnimation(.default) {
                self.selectedIndex = index
            }
        }) {
            VStack {
                items[index].0
                items[index].1
            }
        }
                .anchorPreference(key: AnchorKey.self, value: .bounds, transform: { self.selectedIndex == index ? $0 : nil})
                .accentColor(index == selectedIndex ? .blue : .primary)
    }

    private func indicator(_ bounds: Anchor<CGRect>?) -> some View {
        GeometryReader { proxy in
            if bounds != nil {
                Rectangle()
                        .fill(Color.blue)
                        .frame(width: proxy[bounds!].width, height: 1)
                        .offset(x: proxy[bounds!].minX, y: 3)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
        }
    }

    var body: some View {
        HStack {
            ForEach(items.indices, id: \.self) {
                self.item(at: $0)
            }
        }.overlayPreferenceValue(AnchorKey.self, {
            self.indicator($0)
        })
    }
}

struct AnchorKey: PreferenceKey {
    static func reduce(value: inout Anchor<CGRect>?, nextValue: () -> Anchor<CGRect>?) {
        value = value ?? nextValue()
    }
}

struct DestinationPageView: View {
    var color: Color
    var body: some View {
        Text("Destination Page")
                .font(.title)
                .foregroundColor(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
