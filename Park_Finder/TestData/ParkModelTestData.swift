//
//  ParkModelTestData.swift
//  Park_Finder
//
//  Created by Vince Muller on 4/17/24.
//

import Foundation

let attributes = [
    Attr(present: true, name: "Play Structure", descr: "Play structure description here"),
    Attr(present: true, name: "Slide", descr: "Description here"),
    Attr(present: true, name: "Swing", descr: "Description here"),
    Attr(present: true, name: "Toddler Swing", descr: "Description here"),
    Attr(present: true, name: "Picnic Table", descr: "Description here"),
    Attr(present: false, name: "Grill", descr: "Description here"),
    Attr(present: true, name: "Power", descr: "Description here"),
    Attr(present: false, name: "Sporting Equip.", descr: "Description here"),
    Attr(present: true, name: "Open Field", descr: "Description here"),
    Attr(present: false, name: "ADA Access.", descr: "Description here"),
    Attr(present: false, name: "Fountain", descr: "Description here"),
    Attr(present: false, name: "Water Play", descr: "Description here"),
    Attr(present: true, name: "Seating", descr: "Description here"),
    Attr(present: false, name: "Lighting", descr: "Description here"),
    Attr(present: true, name: "Shade", descr: "Description here")]
    
let cartenPoint = ParkModel(parkID: 1, details: ParkDetails(lat: "33.46892", long: "-112.50651", name: "Carsten Point", description: "Carsten point is a lovely, medium size park with a diverse jungle gym, kids swing set, and small covered concrete patio with picnic tables. The park includes a large grass area perfect for backyard sports, playing tag, picnics, or relaxing behind your favorite book.", groundType: "Wood Chips", parking: "Street Only"), attributes: attributes)

let carstenPointImages = ["carstenPoint","familyPic"]

