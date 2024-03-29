//
//  AttributePillsView.swift
//  ParkFinder
//
//  Created by Vince Muller on 3/19/24.
//

import SwiftUI

struct AttributePillsModel: Hashable, Identifiable {
    let id = UUID()
    let label: String
    
    static let attributes = [
        AttributePillsModel(label: "Play Structure"),
        AttributePillsModel(label: "Slide"),
        AttributePillsModel(label: "Swing"),
        AttributePillsModel(label: "Toddler Swing"),
        AttributePillsModel(label: "Picnic Table"),
        AttributePillsModel(label: "Grill"),
        AttributePillsModel(label: "Power"),
        AttributePillsModel(label: "Sporting Equip."),
        AttributePillsModel(label: "Open Field"),
        AttributePillsModel(label: "ADA Access."),
        AttributePillsModel(label: "Fountain"),
        AttributePillsModel(label: "Water Play"),
        AttributePillsModel(label: "Seating"),
        AttributePillsModel(label: "Lighting"),
        AttributePillsModel(label: "Shade"),
    ]
}

#Preview {
    AttributePillsModel(label: "Play Structure") as! any View
}
