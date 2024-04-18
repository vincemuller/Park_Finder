//
//  ParkDetailsScreen.swift
//  ParkFinder
//
//  Created by Vince Muller on 3/28/24.
//

import SwiftUI

struct ParkDetailsScreen: View {
    
    var topNavBarIcons = TopNavBarOverlay()
    let attributePillColumns: [GridItem] = [GridItem(.flexible()),
                                            GridItem(.flexible()),
                                            GridItem(.flexible()),]
    
    let weatherColumns: [GridItem] = [GridItem(.flexible()),
                                      GridItem(.flexible()),
                                      GridItem(.flexible()),
                                      GridItem(.flexible()),
                                      GridItem(.flexible())]
    
    @StateObject var viewModel = ParkDetailsViewModel()
    
    var body: some View {
        NavigationStack {
            GeometryReader {proxy in
                ScrollView {
                    VStack (alignment: .leading) {
                        ParkDetailsImageScroll(parkBackgroundImage: viewModel.parkImages, width: proxy.size.width)
                        ParkDetailsTitleView(title: viewModel.parkDetails.details.name)
                            .padding(.horizontal)
                        GroundParkingCalloutView(groundType: viewModel.parkDetails.details.groundType, parking: viewModel.parkDetails.details.parking)
                        DescriptionView(description: viewModel.parkDetails.details.description)
                            .padding(.horizontal)
                        Divider()
                            .padding()
                        LazyVGrid(columns: attributePillColumns) {
                            ForEach(viewModel.parkDetails.attributes) {attribute in
                                AttributePillView(attribute: attribute, selectedAttribute: $viewModel.selectedAttribute)
                            }
                        }
                        .overlay {
                            (viewModel.isShowingAttributeDetails==true && viewModel.selectedAttribute?.present==true ?
                             AttributeDetailsView(width: proxy.size.width, attributes: viewModel.selectedAttribute ?? Attr(present: false, name: "", descr: ""), isShowingAttributeDetails: $viewModel.isShowingAttributeDetails)
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
            .toolbarBackground(Color.pfCream, for: .navigationBar)
            .toolbar(content: {
                topNavBarIcons
                    .padding(.bottom)
            })
        }
    }
}

#Preview {
    ParkDetailsScreen()
}


