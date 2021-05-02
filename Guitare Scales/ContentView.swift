//
//  ContentView.swift
//  Guitare Scales
//
//  Created by Stephane Bressani on 01.05.21.
//

import SwiftUI


struct ContentView: View {
    //@State private var animating = false
    @State private var currentView: Tab = .TabScale
    @State private var showModal: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                CurrentScreen(currentView: self.$currentView)
                TabBar(currentView: self.$currentView, showModal: self
                        .$showModal)
            }.edgesIgnoringSafeArea(.all)
        }
                .background(Color(.lightGray))
                .navigationViewStyle(StackNavigationViewStyle())
                .sheet(isPresented: self.$showModal) { ScreenModal() }
                /*TabBar(items: [
                    (Image(systemName: "tray"), Text("Scales")),
                    (Image(systemName: "doc.text"), Text("About"))
                ]).padding(10)
                  .border(Color.blue).frame(width: 100, height: 50).padding
                   (15)*/
    }
}

/*
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
                items[index].0.cornerRadius(5.0)
                items[index].1
            }
        }
                .anchorPreference(key: AnchorKey.self, value: .bounds, transform: { self.selectedIndex == index ? $0 : nil})
                .accentColor(index == selectedIndex ? .blue : .primary)
                .padding(15)
                .frame(width: 90, height: 40, alignment: .center)
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
*/