//
//  NavBarIconView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/18/24.
//

import SwiftUI

struct NavBarIconView: View {
    let iconName: String
    
    var body: some View {
        Button {
            let latitude = "33.46892"
            let longitude = "-112.50651"
            let url = URL(string: "maps://?q=\(latitude),\(longitude)")
            
            
            if UIApplication.shared.canOpenURL(url!) {
                  UIApplication.shared.open(url!, options: [:], completionHandler: nil)
            }
            
        } label: {
                ZStack {
                    Circle()
                        .fill(.white)
                        .frame(width: 35)
                        .shadow(color: .shadow, radius: 2, x: 0, y: 3)
                    Image(systemName: iconName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: (iconName != "square.and.arrow.up" ? 20 : 16))
                        .foregroundColor(.black)
                        .offset(y: (iconName == "square.and.arrow.up" ? -2 : 0))
                        
                }
        }
    }
}

#Preview {
    NavBarIconView(iconName: "car")
}
