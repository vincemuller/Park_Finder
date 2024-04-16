//
//  ParkDetailsBannerImageView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/18/24.
//

import SwiftUI

struct ParkDetailsImageScroll: View {
    let parkBackgroundImage: [String]
    let width: CGFloat
    
    var body: some View {
        TabView {
            ForEach(parkBackgroundImage, id: \.self) {image in
                Image(image)
                    .resizable()
                    .stretchy()
                    .aspectRatio(contentMode: .fill)
            }
        }
        .frame(width: width)
        .tabViewStyle(.page)
        .stretchy()
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .frame(height: 350)
    }
}

#Preview {
    ParkDetailsImageScroll(parkBackgroundImage: ["carstenPoint","carstenPoint"], width: 350)
}
