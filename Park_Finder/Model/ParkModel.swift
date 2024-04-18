//
//  ParkModel.swift
//  Park_Finder
//
//  Created by Vince Muller on 4/17/24.
//

import Foundation

struct ParkDetails {
    let lat: String
    let long: String
    let name: String
    let description: String
    let groundType: String
    let parking: String
}

struct Attr: Identifiable {
    let id = UUID()
    let present: Bool
    let name: String
    let descr: String
}

struct Review {
    let userID: Int
    let parkID: Int
    let rating: Float
    let headline: String
    let comment: String
    let timestamp: Date
    let admin_Confirmed: Bool
}

struct ParkModel {
    let parkID: Int
    let details: ParkDetails
    let attributes: [Attr]
//    let reviews: [Review]
}

