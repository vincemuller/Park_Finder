//
//  ParkDetailsScreen.swift
//  ParkFinder
//
//  Created by Vince Muller on 3/28/24.
//

import SwiftUI

struct ParkDetailsScreen: View {
    
    let attributePillColumns: [GridItem] = [GridItem(.flexible()),
                                            GridItem(.flexible()),
                                            GridItem(.flexible()),]
    
    let weatherColumns: [GridItem] = [GridItem(.flexible()),
                                      GridItem(.flexible()),
                                      GridItem(.flexible()),
                                      GridItem(.flexible()),
                                      GridItem(.flexible())]
    
    let parkBackgroundImage: String = "carstenPoint"
    let parkName: String = "Carsten Point"
    let description: String = "Carsten point is a lovely, medium size park with a diverse jungle gym, kids swing set, and small covered concrete patio with picnic tables. The park includes a large grass area perfect for backyard sports, playing tag, picnics, or relaxing behind your favorite book."
    
    var body: some View {
        
        GeometryReader {proxy in
            ScrollView {
                VStack (alignment: .leading) {
                    ParkDetailsTopImageNavBar(parkBackgroundImage: parkBackgroundImage, width: proxy.size.width)
                    ParkDetailsTitleView(title: parkName)
                        .padding(.horizontal)
                    GroundParkingCalloutView(groundType: "Wood chips", parking: "Street Only")
                    DescriptionView(description: description)
                        .padding(.horizontal)
                    Divider()
                        .padding()
                    LazyVGrid(columns: attributePillColumns) {
                        ForEach(AttributePillsModel.attributes) {attribute in
                            AttributePillView(label: attribute.label, active: true)
                        }
                    }
                    .padding()
                    Divider()
                        .padding(.top)
                        .padding(.horizontal)
                    Text("Weather")
                        .foregroundStyle(Color.black)
                        .font(.title2)
                        .frame(alignment: .leading)
                        .padding(.horizontal)
                    LazyVGrid(columns: weatherColumns) {
                        ForEach(WeatherDaysDataModel.data) {day in
                            WeatherDayView(dayOfWeek: day.dayOfWeek, calendarDay: day.calendarDay, imageName: day.icon, temperature: day.temperature)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    Divider()
                        .padding(.horizontal)
                        .padding(.top)
                    Text("Reviews")
                        .foregroundStyle(Color.black)
                        .font(.title2)
                        .frame(alignment: .leading)
                        .padding(.horizontal)
                }
            }
            .ignoresSafeArea()
            Spacer()
        }
        .background(Color.white)
    }
}

#Preview {
    ParkDetailsScreen()
}


