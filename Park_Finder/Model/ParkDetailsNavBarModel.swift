
import Foundation
import SwiftUI


struct ParkDetailsNavBarModel: Hashable, Identifiable {
    let id = UUID()
    let iconName: String
    
    static let navBarItems =  [
        ParkDetailsNavBarModel(iconName: "car"),
        ParkDetailsNavBarModel(iconName: "square.and.arrow.up"),
        ParkDetailsNavBarModel(iconName: "star"),
        ]
}
