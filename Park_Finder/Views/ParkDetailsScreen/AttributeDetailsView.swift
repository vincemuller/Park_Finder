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
                    .foregroundStyle(Color.pfCream)
                    .frame(width: width, height: 200)
                    .cornerRadius(10)
                Rectangle()
                    .foregroundStyle(Color.pfDarkGreen)
                    .frame(width: 250, height: 150)
                    .cornerRadius(10)
                    .shadow(radius: 8)
                VStack {
                    Text(attributes.label)
                        .foregroundStyle(Color.white)
                    Text(attributes.description)
                        .foregroundStyle(Color.white)
                        .frame(width: 250, height: 50)
                }
            }
        }
    }
}

#Preview {
    AttributeDetailsView(width: 350, attributes: Attributes(present: false, label: "Swing", description: "The park has 3 regular sized swings and 1 toddler swing"), isShowingAttributeDetails: .constant(true))
}
