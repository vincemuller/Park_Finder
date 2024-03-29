
import Foundation
import SwiftUI


struct ParkDetailsNavBarModel: Hashable, Identifiable {
    let id = UUID()
    let iconName: String
    let label: String
    
    static let navBarItems =  [
        ParkDetailsNavBarModel(iconName: "car", label: "Directions"),
        ParkDetailsNavBarModel(iconName: "shared.with.you", label: "Share"),
        ParkDetailsNavBarModel(iconName: "photo.stack", label: "Photos")
        ]
}
