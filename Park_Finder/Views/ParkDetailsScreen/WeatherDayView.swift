//
//  WeatherDayView.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/28/24.
//

import SwiftUI

struct WeatherDayView: View {
    var dayOfWeek: String
    var calendarDay: Int
    var imageName: String
    var temperature: Int
    
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
            ZStack {
                Circle()
                    .fill(calendarDay==5 ? .vpDarkTeal : Color.clear)
                    .frame(width: 30)
                Text("\(calendarDay)")
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundStyle(calendarDay==5 ? Color.white : Color.black)
            }
            Text(dayOfWeek)
                .font(.system(size: 14, weight: .medium, design: .default))
                .foregroundStyle(Color.black)
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundStyle(.vpDarkTeal)
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(Color.black)
        }
    }
}
#Preview {
    WeatherDayView(dayOfWeek: "Tue", calendarDay: 5, imageName: "cloud", temperature: 72)
}
