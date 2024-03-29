//
//  WeatherDataModel.swift
//  VerradoParks
//
//  Created by Vince Muller on 3/28/24.
//

import Foundation


struct WeatherDaysDataModel: Hashable, Identifiable {
    
    let id = UUID()
    let dayOfWeek: String
    let calendarDay: Int
    let icon: String
    let temperature: Int
    
    static var data = [
        WeatherDaysDataModel(dayOfWeek: "TUE", calendarDay: 5, icon: "cloud.sun", temperature: 70),
        WeatherDaysDataModel(dayOfWeek: "WED", calendarDay: 6, icon: "sun.max", temperature: 74),
        WeatherDaysDataModel(dayOfWeek: "THU", calendarDay: 7, icon: "cloud", temperature: 72),
        WeatherDaysDataModel(dayOfWeek: "FRI", calendarDay: 8, icon: "wind.snow", temperature: 18),
        WeatherDaysDataModel(dayOfWeek: "SAT", calendarDay: 9, icon: "cloud.rain", temperature: 78)
    ]
    
}
