//
//  ParkModels.swift
//  Park_Finder
//
//  Created by Vince Muller on 3/30/24.
//

import Foundation
        
struct Attributes: Hashable, Identifiable, Comparable {
    let id = UUID()
    let present: Bool
    let label: String
    let description: String
    
    static func < (lhs: Attributes, rhs: Attributes) -> Bool {
        lhs.present.description > rhs.present.description
    }
}

struct ParkDetailsModel: Identifiable {
    let id = UUID()
    let parkID: Int
    let lat: String
    let long: String
    let name: String
    let description: String
    let groundType: String
    let parking: String
}
