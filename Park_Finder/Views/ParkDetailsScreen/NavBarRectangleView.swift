//
//  SpaceBarView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/18/24.
//

import SwiftUI

struct NavBarRectangleView: View {
    let width: CGFloat
    let height: CGFloat
    let color: Color
    
    var body: some View {
        ContainerRelativeShape()
            .fill(color)
            .frame(width: width, height: height)
    }
}

#Preview {
    NavBarRectangleView(width: 350, height: 2, color: .black)
}
