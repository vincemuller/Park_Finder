//
//  TopNavBarOverlay.swift
//  Park_Finder
//
//  Created by Vince Muller on 4/16/24.
//

import SwiftUI

struct TopNavBarOverlay: View {
    let navBarColumns: [GridItem] = [
        GridItem(.fixed(30), spacing: 15, alignment: .bottomTrailing),
        GridItem(.fixed(30), spacing: 15, alignment: .bottomTrailing),
        GridItem(.fixed(30), spacing: 0, alignment: .bottomTrailing)]
    
    var body: some View {
        LazyVGrid(columns: navBarColumns, alignment: .trailing) {
            ForEach(ParkDetailsNavBarModel.navBarItems) {navBarItem in
                NavBarIconView(iconName: navBarItem.iconName)
            }
        }
    }
}

#Preview {
    TopNavBarOverlay()
}
