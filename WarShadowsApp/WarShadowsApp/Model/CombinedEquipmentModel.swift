//
//  CombinedEquipmentModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 26.08.2023.
//

import Foundation

struct CombinedEquipmentModel: Identifiable {
    let id = UUID()
    let date: String?
    let day: Int?
    let aircraft, helicopter, tank: EquipmentStats?
    let apc, fieldArtillery, mrl, militaryAuto: EquipmentStats?
    let fuelTank, drone, navalShip, antiAircraftWarfare: EquipmentStats?
    let specialEquipment, mobileSRBMSystem: EquipmentStats?
    let greatestLossesDirection: String?
    let vehiclesAndFuelTanks, cruiseMissiles: EquipmentStats?
}
