//
//  AttributePillView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/19/24.
//

import SwiftUI

struct AttributePillView: View {
    let label: String
    let active: Bool
    
    var body: some View {
        Button {
            print("This pill was selected! \(label)")
        } label: {
            Text(label)
                .frame(width: 100, height: 30)
                .background(active ? Color(.vpDarkTeal) : .white)
                .foregroundColor(active ? .white : .black)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(active ? Color(.clear) : .black, lineWidth: 2)
                    )
                .cornerRadius(10)
                .opacity(active ? 1.0 : 0.3)
                .font(.system(size: 11, weight: .bold, design: .default))
        }
    }
}
 
#Preview {
    AttributePillView(label: "Play Structure", active: false)
}
