//
//  ParkDetailsTitleView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/18/24.
//

import SwiftUI

struct ParkDetailsTitleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundStyle(.black)
            .font(.title)
            .fontWeight(.semibold)
    }
}

#Preview {
    ParkDetailsTitleView(title: "Carsten Point")
}
