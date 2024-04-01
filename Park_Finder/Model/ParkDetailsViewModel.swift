//
//  ParkDetailsViewModel.swift
//  Park_Finder
//
//  Created by Vince Muller on 3/30/24.
//

import Foundation


class ParkDetailsViewModel: ObservableObject {
    var parkImage: String!
    var parkDetails: ParkDetailsModel!
    var attributes: [Attributes]!
    
    @Published var selectedAttribute: Attributes? {
        didSet {
            isShowingAttributeDetails.toggle()
        }
    }
    
    @Published var isShowingAttributeDetails = false
    
    init(parkID: Int) {
        getParkImages()
        getParkDetails(id: 1)
    }
    
    func getParkImages() {
        parkImage = "carstenPoint"
    }
    
    func getParkDetails(id: Int) {
        
        parkDetails = ParkDetailsModel(parkID: 1, lat: "33.46892", long: "-112.50651", name: "Carsten Point", description: "Carsten point is a lovely, medium size park with a diverse jungle gym, kids swing set, and small covered concrete patio with picnic tables. The park includes a large grass area perfect for backyard sports, playing tag, picnics, or relaxing behind your favorite book.", groundType: "Wood Chips", parking: "Street Only")
        
        attributes = [Attributes(present: true, label: "Play Structure", description: ""), Attributes(present: true, label: "Slide", description: ""), Attributes(present: true, label: "Swing", description: "This park has 3 regular sized swings and 1 toddler swing"), Attributes(present: true, label: "Toddler Swing", description: ""), Attributes(present: true, label: "Picnic Table", description: ""), Attributes(present: false, label: "Grill", description: ""), Attributes(present: true, label: "Power", description: ""), Attributes(present: false, label: "Sporting Equip.", description: ""), Attributes(present: true, label: "Open Field", description: ""), Attributes(present: false, label: "ADA Access", description: ""), Attributes(present: false, label: "Fountain", description: ""), Attributes(present: false, label: "Water Play", description: ""), Attributes(present: true, label: "Seating", description: ""), Attributes(present: false, label: "Lighting", description: ""), Attributes(present: true, label: "Shade", description: "")]
    }
    
    
}

