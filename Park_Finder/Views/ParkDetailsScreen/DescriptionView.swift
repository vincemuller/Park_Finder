//
//  DescriptionView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/18/24.
//

import SwiftUI

struct DescriptionView: View {
    let description: String
    
    var body: some View {
        Text(description)
            .foregroundStyle(Color.black)
            .font(.callout)
            .fontWeight(.regular)
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DescriptionView(description: "Carsten point is a lovely, medium size park with a diverse jungle gym, kids swing set, and small covered concrete patio with picnic tables. The park includes a large grass area perfect for backyard sports, playing tag, picnics, or relaxing behind your favorite book.")
}
