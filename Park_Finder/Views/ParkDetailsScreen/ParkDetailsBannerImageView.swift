//
//  ParkDetailsBannerImageView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/18/24.
//

import SwiftUI

struct ParkDetailsTopImageNavBar: View {
    let navBarColumns: [GridItem] = [
        GridItem(.fixed(30), spacing: 15, alignment: .bottomTrailing),
        GridItem(.fixed(30), spacing: 15, alignment: .bottomTrailing),
        GridItem(.fixed(30), spacing: 15, alignment: .bottomTrailing)]
    let parkBackgroundImage: String
    let width: CGFloat
    
    var body: some View {
        ZStack (alignment: .top) {
            Image(parkBackgroundImage)
                .resizable()
                .stretchy()
//                    .overlay(overlay, alignment: .bottomLeading)
                .frame(height: 350)
            LazyVGrid(columns: navBarColumns, alignment: .trailing) {
                ForEach(ParkDetailsNavBarModel.navBarItems) {navBarItem in
                    NavBarIconView(iconName: navBarItem.iconName)
                }
            }.padding().offset(y: 40)
        }
    }
}

#Preview {
    ParkDetailsTopImageNavBar(parkBackgroundImage: "carstenPoint", width: 350)
}
