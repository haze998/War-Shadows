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
}

// MARK: - CUSTOM COLOR
let colorDarkGreen: Color = Color("ColorDarkGreen")
let colorLightGreen: Color = Color("ColorLightGreen")
let colorOrange: Color = Color("ColorOrange")
let colorWhite: Color = Color("ColorWhite")
