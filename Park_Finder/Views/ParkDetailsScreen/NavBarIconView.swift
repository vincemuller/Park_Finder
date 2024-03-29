//
//  NavBarIconView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/18/24.
//

import SwiftUI

struct NavBarIconView: View {
    let iconName: String
    let label: String
    
    var body: some View {
        Button {
            let latitude = "33.46892"
            let longitude = "-112.50651"
            let url = URL(string: "maps://?q=\(latitude),\(longitude)")
            
            
            if UIApplication.shared.canOpenURL(url!) {
                  UIApplication.shared.open(url!, options: [:], completionHandler: nil)
            }
            
        } label: {
            VStack (spacing: 3) {
                ZStack {
                    Circle()
                        .fill(.white)
                        .frame(width: 50)
                    Image(systemName: iconName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .foregroundColor(.black)
                        
                }
                Text(label)
                    .foregroundStyle(Color.white)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                Spacer()
            }
        }
    }
}

#Preview {
    NavBarIconView(iconName: "car", label: "Directions")
}
