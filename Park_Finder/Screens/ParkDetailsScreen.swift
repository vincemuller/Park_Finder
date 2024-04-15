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
    
    @StateObject var viewModel = ParkDetailsViewModel(parkID: 1)
    
    var body: some View {
        
        GeometryReader {proxy in
            ScrollView {
                VStack (alignment: .leading) {
                    ParkDetailsTopImageNavBar(parkBackgroundImage: viewModel.parkImage, width: proxy.size.width)
                    ParkDetailsTitleView(title: viewModel.parkDetails.name)
                        .padding(.horizontal)
                    GroundParkingCalloutView(groundType: viewModel.parkDetails.groundType, parking: viewModel.parkDetails.parking)
                    DescriptionView(description: viewModel.parkDetails.description)
                        .padding(.horizontal)
                    Divider()
                        .padding()
                    LazyVGrid(columns: attributePillColumns) {
                        ForEach(viewModel.attributes) {attribute in
                            AttributePillView(attribute: attribute, selectedAttribute: $viewModel.selectedAttribute)
                        }
                    }
                    .overlay {
                        (viewModel.isShowingAttributeDetails==true && viewModel.selectedAttribute?.present==true ?
                        AttributeDetailsView(width: proxy.size.width, attributes: viewModel.selectedAttribute ?? Attributes(present: true, label: "", description: ""), isShowingAttributeDetails: $viewModel.isShowingAttributeDetails)
                        : nil)
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
        .background(Color.pfCream)
    }
}

#Preview {
    ParkDetailsScreen()
}


