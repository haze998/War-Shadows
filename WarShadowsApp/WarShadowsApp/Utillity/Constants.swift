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
    case mapURL = "https://deepstatemap.live/"
}

// MARK: - TXT CONSTANT
enum TxtConst: String {
    case dayOfWar = "День війни"
    case personnel = "Особового складу"
    case dateOfWar = "Втрати ворога на :"
    case personnelChar = "Особового складу :"
    case navBarTitle = "War in Ukraine"
    case searchPrompt = "Знайти день війни ?"
    case detailTitle = "ЗАГАЛЬНІ БОЙОВІ ВТРАТИ ПРОТИВНИКА НА "
    case dayTitle = "ДЕНЬ ВІЙНИ : "
}

// MARK: - EQUIPMENT LOSSES CONST
struct equipmentLosses {
    static let personnel = "Особового складу :"
    static let aircraft = "Літаків :"
    static let helicopter = "Гелікоптерів :"
    static let tank = "Танків :"
    static let apc = "ББМ :"
    static let fieldArtillery = "Артсистем :"
    static let mrl = "РСЗВ :"
    static let militaryAuto = "Автомобілів :"
    static let fuelTank = "Цистерни з ПММ :"
    static let drone = "БПЛА/Дронів :"
    static let navalShip = "Кораблів/Катерів :"
    static let antiAircraftWarfare = "Засобів ППО :"
    static let cruiseMissiles = "Крилатих ракет :"
}

// MARK: - CONST IMAGES
enum CellImages: String {
    case aircraft = "aircraft"
    case antiAircraftWarfare = "anti_aircraft_warfare"
    case apc = "apc"
    case cruiseMissiles = "cruise_missiles"
    case drone = "drone"
    case fieldArtillery = "field_artillery"
    case fuelTank = "fuel_tank"
    case helicopter = "helicopter"
    case militaryAuto = "military_auto"
    case mrl = "mrl"
    case navalShip = "naval_ship"
    case tank = "tank"
    case ak = "ak-47"
    case coffin = "coffin"

    func setImage() -> Image {
        return Image(self.rawValue)
    }
}

// MARK: - CUSTOM COLOR
let colorDarkGreen: Color = Color("ColorDarkGreen")
let colorLightGreen: Color = Color("ColorLightGreen")
let colorOrange: Color = Color("ColorOrange")
let colorWhite: Color = Color("ColorWhite")

// MARK: - LAYOUT
let equipmentColumnSpacing: CGFloat = 15
let equipmentRowSpacing: CGFloat = 5
var equipmentGridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: equipmentColumnSpacing), count: 1)
}
