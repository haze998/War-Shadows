//
//  Constants.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import Foundation
import SwiftUI

// MARK: - CUSTOM FONT
enum FontNames: String {
    case russoRegular = "RussoOne-Regular"
}

// MARK: - URL CONSTANT
enum ApiURL: String {
    case lossesEquipmentURL = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json"
    case personalLossesURL = "https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_personnel.json"
}

// MARK: - TXT CONSTANT
enum TxtConst: String {
    case dayOfWar = "День війни"
    case personnel = "Особового складу"
    case dateOfWar = "Втрати ворога на :"
    case personnelChar = "Особового складу :"
    case navBarTitle = "Russian losses in Ukraine"
    case searchPrompt = "Знайти день війни ?"
    case detailTitle = "ЗАГАЛЬНІ БОЙОВІ ВТРАТИ ПРОТИВНИКА НА "
}

// MARK: - CONST IMAGES
let aircraft = Image("aircraft")
let antiAircraftWarfare = Image("anti_aircraft_warfare")
let apc = Image("apc")
let cruiseMissiles = Image("cruise_missiles")
let drone = Image("drone")
let fieldArtillery = Image("field_artillery")
let fuelTank = Image("fuel_tank")
let helicopter = Image("helicopter")
let militaryAuto = Image("military_auto")
let mrl = Image("mrl")
let navalShip = Image("naval_ship")
let tank = Image("tank")
let poisonFill = Image("poison_fill")
let poison = Image("poison")

// MARK: - CUSTOM COLOR
let colorDarkGreen: Color = Color("ColorDarkGreen")
let colorLightGreen: Color = Color("ColorLightGreen")
let colorOrange: Color = Color("ColorOrange")
let colorWhite: Color = Color("ColorWhite")

// MARK: - LAYOUT
let equipmentColumnSpacing: CGFloat = 25
let equipmentRowSpacing: CGFloat = -20
var equipmentGridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: equipmentColumnSpacing), count: 2)
}
