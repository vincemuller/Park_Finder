//
//  AttributeDetailsView.swift
//  Park_Finder
//
//  Created by Vince Muller on 3/31/24.
//

import SwiftUI

struct AttributeDetailsView: View {
    let width: CGFloat
    let attributes: Attributes
    
    @Binding var isShowingAttributeDetails: Bool
    
    var body: some View {
        Button {
            isShowingAttributeDetails.toggle()
        } label: {
            ZStack {
                Rectangle()
                    .foregroundStyle(Color.white)
                    .frame(width: width, height: 200)
                    .cornerRadius(10)
                Rectangle()
                    .foregroundStyle(attributes.present ? Color.vpDarkTeal : Color.white)
                    .frame(width: 250, height: 150)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(attributes.present ? Color(.clear) : .black, lineWidth: 2)
                    )
                    .opacity(attributes.present ? 1.0 : 0.3)
                VStack {
                    Text(attributes.label)
                        .foregroundStyle(attributes.present ? Color.white : Color.gray)
                    Text(attributes.description)
                        .foregroundStyle(attributes.present ? Color.white : Color.gray)
                        .frame(width: 250, height: 50)
                }
            }
        }
    }
}

#Preview {
    AttributeDetailsView(width: 350, attributes: Attributes(present: false, label: "Swing", description: "The park has 3 regular sized swings and 1 toddler swing"), isShowingAttributeDetails: .constant(true))
}
