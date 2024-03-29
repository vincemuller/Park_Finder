//
//  StretchyHeader.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/28/24.
//

import SwiftUI

struct Stretchy: ViewModifier {
    var isTop = true

    func heightFor(_ reader: GeometryProxy) -> CGFloat {
        let height = reader.size.height
        let frame  = reader.frame(in: .global)
        let deltaY = isTop ? frame.minY : (UIScreen.main.bounds.size.height - frame.maxY)
        return height + max(0, deltaY)
    }

    func offsetFor(_ reader: GeometryProxy) -> CGFloat {
        guard isTop else { return 0 }
        let frame  = reader.frame(in: .global)
        let deltaY = frame.minY
        return min(0, -deltaY)
    }

    func body(content: Content) -> some View {
        GeometryReader { reader in
            Color.clear
                .overlay(content.aspectRatio(contentMode: .fill), alignment: .center)
                .clipped()
                .frame(height: heightFor(reader))
                .offset(y: offsetFor(reader))
        }
    }
}

extension View {
    func stretchy(isTop: Bool = true) -> some View {
        self.modifier(Stretchy(isTop: isTop))
    }
}

struct ContentView: View {
    
    let overlay: some View =
    Text("❊ Stretchy")
        .font(.title)
        .fontWeight(.bold)
        .padding()
        .shadow(radius: 4)
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Image("carstenPoint")
                    .resizable()
                    .stretchy()
//                    .overlay(overlay, alignment: .bottomLeading)
                    .frame(height: 250)
                ForEach(0..<10) { i in
                    Color.white.opacity(0.1)
                        .frame(height: 80)
                        .cornerRadius(12)
                        .padding(8)
                }
                Image("carstenPoint")
                    .resizable()
                    .stretchy(isTop: false)
                    .overlay(overlay, alignment: .topLeading)
                    .frame(height: 180)
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

#Preview {
    ContentView()
}
