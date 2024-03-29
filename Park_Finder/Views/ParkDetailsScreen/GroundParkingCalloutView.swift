//
//  GroundParkingCalloutView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/29/24.
//

import SwiftUI

struct GroundParkingCalloutView: View {
    let groundType: String
    let parking: String
    
    var body: some View {
        HStack (spacing: 35) {
            VStack (alignment: .leading) {
                Text("Ground Type")
                    .foregroundStyle(Color.black)
                    .font(.subheadline)
                Text(groundType)
                    .foregroundStyle(Color.black)
                    .font(.body)
                    .fontWeight(.semibold)
            }
            VStack (alignment: .leading) {
                Text("Parking")
                    .foregroundStyle(Color.black)
                    .font(.subheadline)
                Text(parking)
                    .foregroundStyle(Color.black)
                    .font(.body)
                    .fontWeight(.semibold)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

#Preview {
    GroundParkingCalloutView(groundType: "Wood Chips", parking: "Street Only")
}
