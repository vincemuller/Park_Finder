//
//  AttributeDetailsView.swift
//  Park_Finder
//
//  Created by Vince Muller on 3/31/24.
//

import SwiftUI

struct AttributeDetailsView: View {
    let width: CGFloat
    let attributes: Attr
    
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
                    Text(attributes.name)
                        .foregroundStyle(Color.white)
                    Text(attributes.descr)
                        .foregroundStyle(Color.white)
                        .frame(width: 250, height: 50)
                }
            }
        }
    }
}

#Preview {
    AttributeDetailsView(width: 350, attributes: Attr(present: false, name: "Swing", descr: "This park has 3 swings"), isShowingAttributeDetails: .constant(true))
}
