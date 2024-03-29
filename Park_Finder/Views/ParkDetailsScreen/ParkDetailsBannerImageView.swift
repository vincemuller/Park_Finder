//
//  ParkDetailsBannerImageView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/18/24.
//

import SwiftUI

struct ParkDetailsTopImageNavBar: View {
    let navBarColumns: [GridItem] = [GridItem(.flexible()),
                                     GridItem(.flexible()),
                                     GridItem(.flexible())]
    
    let parkBackgroundImage: String
    let width: CGFloat
    
    var body: some View {
        VStack (alignment: .center, spacing: -30) {
            Image(parkBackgroundImage)
                .resizable()
                .stretchy()
//                    .overlay(overlay, alignment: .bottomLeading)
                .frame(height: 250)
            ZStack {
                NavBarRectangleView(width: width, height: 65, color: .vpDarkTeal)
                LazyVGrid(columns: navBarColumns) {
                    ForEach(ParkDetailsNavBarModel.navBarItems) {navBarItem in
                        NavBarIconView(iconName: navBarItem.iconName, label: navBarItem.label)
                    }
                }
                .offset(y: -10)
            }
        }
    }
}

#Preview {
    ParkDetailsTopImageNavBar(parkBackgroundImage: "carstenPoint", width: 350)
}
