//
//  ParkDetailsViewModel.swift
//  Park_Finder
//
//  Created by Vince Muller on 3/30/24.
//

import Foundation


class ParkDetailsViewModel: ObservableObject {
    var parkImages: [String]!
    var parkDetails: ParkModel!
    var parkReviews: [Review]!
    
    @Published var selectedAttribute: Attr? {
        didSet {
            isShowingAttributeDetails.toggle()
        }
    }
    
    @Published var isShowingAttributeDetails = false
    
    init() {
        getParkImages()
        getParkDetails()
        getParkReviews()
    }
    
    func getParkImages() {
        parkImages = carstenPointImages
    }
    
    func getParkDetails() {
        parkDetails = cartenPoint
    }
    
    func getParkReviews() {

    }
    
    
}

