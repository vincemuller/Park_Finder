//
//  AttributePillView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/19/24.
//

import SwiftUI

struct AttributePillView: View {
    let attribute: Attributes
    
    @Binding var selectedAttribute: Attributes?
    
    var body: some View {
        Button {
            selectedAttribute = attribute
        } label: {
            Text(attribute.label)
                .frame(width: 100, height: 30)
                .background(attribute.present ? Color(.vpDarkTeal) : .white)
                .foregroundColor(attribute.present ? .white : .black)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(attribute.present ? Color(.clear) : .black, lineWidth: 2)
                )
                .cornerRadius(10)
                .opacity(attribute.present ? 1.0 : 0.3)
                .font(.system(size: 11, weight: .bold, design: .default))
            
        }
    }
}
 
#Preview {
    AttributePillView(attribute: Attributes(present: true, label: "Swing", description: "The park has 3 swings and 1 toddler swing"), selectedAttribute: .constant(Attributes(present: true, label: "Swing", description: "The park has 3 swings and 1 toddler swing")))
}
