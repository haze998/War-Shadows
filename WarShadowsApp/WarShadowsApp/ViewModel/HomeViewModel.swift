//
//  HomeViewModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published private(set) var lossesDataArray: [LossesDataModel] = []
    var lossesInfo: [LossesModel] = []
    var equipmentInfo: [EquipmentModel] = []
    
    func fetchInfo() {
        fetchPersonnelLosses()
        fetchEquipmentLosses()
    }
    
    // MARK: - Fetch personnel losses info
    private func fetchPersonnelLosses() {
        NetworkManager.shared.getPersonnelLossesInfo { result in
            self.lossesInfo = result
        }
    }
    
    // MARK: - Fetch equipment losses info
    private func fetchEquipmentLosses() {
        NetworkManager.shared.getEquipmentLossesInfo { result in
            self.equipmentInfo = result
            self.makeArray()
        }
    }
    
    func makeArray() {
        var lossesData: [LossesDataModel] = []

        for loss in lossesInfo {
            if let combinedData = createCombinedData(for: loss) {
                lossesData.append(LossesDataModel(date: loss.date, day: loss.day, personnel: loss.personnel, statsPersonnel: loss.statsPersonnel, pow: loss.pow, equip: combinedData))
            }
        }

        lossesDataArray = lossesData
    }

    func createCombinedData(for loss: LossesModel) -> CombinedEquipmentModel? {
        guard let equipInfo = equipmentInfo.first(where: { $0.day == loss.day }) else {
            return nil
        }

        let aircraftStats = EquipmentStats(image: Image(CellImages.aircraft.rawValue), value: equipInfo.aircraft, title: equipmentLosses.aircraft)
        let helicopterStats = EquipmentStats(image: Image(CellImages.helicopter.rawValue), value: equipInfo.helicopter, title: equipmentLosses.helicopter)
        let tankStats = EquipmentStats(image: Image(CellImages.tank.rawValue), value: equipInfo.tank, title: equipmentLosses.tank)
        let apcStats = EquipmentStats(image: Image(CellImages.apc.rawValue), value: equipInfo.apc, title: equipmentLosses.apc)
        let fieldArtilleryStats = EquipmentStats(image: Image(CellImages.fieldArtillery.rawValue), value: equipInfo.fieldArtillery, title: equipmentLosses.fieldArtillery)
        let mrlStats = EquipmentStats(image: Image(CellImages.mrl.rawValue), value: equipInfo.mrl, title: equipmentLosses.mrl)
        let militaryAutoStats = EquipmentStats(image: Image(CellImages.militaryAuto.rawValue), value: equipInfo.militaryAuto, title: equipmentLosses.militaryAuto)
        let fuelTankStats = EquipmentStats(image: Image(CellImages.fuelTank.rawValue), value: equipInfo.fuelTank, title: equipmentLosses.fuelTank)
        let droneStats = EquipmentStats(image: Image(CellImages.drone.rawValue), value: equipInfo.drone, title: equipmentLosses.drone)
        let navalShipStats = EquipmentStats(image: Image(CellImages.navalShip.rawValue), value: equipInfo.navalShip, title: equipmentLosses.navalShip)
        let antiAircraftWarfareStats = EquipmentStats(image: Image(CellImages.antiAircraftWarfare.rawValue), value: equipInfo.antiAircraftWarfare, title: equipmentLosses.antiAircraftWarfare)
        let specialEquipmentStats = EquipmentStats(image: Image(""), value: equipInfo.specialEquipment, title: "")
        let mobileSRBMSystemStats = EquipmentStats(image: Image(""), value: equipInfo.mobileSRBMSystem, title: "")
        let cruiseMissilesStats = EquipmentStats(image: Image(CellImages.cruiseMissiles.rawValue), value: equipInfo.cruiseMissiles, title: equipmentLosses.cruiseMissiles)

        let combinedData = CombinedEquipmentModel(
            date: equipInfo.date,
            day: equipInfo.day,
            aircraft: aircraftStats,
            helicopter: helicopterStats,
            tank: tankStats,
            apc: apcStats,
            fieldArtillery: fieldArtilleryStats,
            mrl: mrlStats,
            militaryAuto: militaryAutoStats,
            fuelTank: fuelTankStats,
            drone: droneStats,
            navalShip: navalShipStats,
            antiAircraftWarfare: antiAircraftWarfareStats,
            specialEquipment: specialEquipmentStats,
            mobileSRBMSystem: mobileSRBMSystemStats,
            greatestLossesDirection: equipInfo.greatestLossesDirection,
            vehiclesAndFuelTanks: mobileSRBMSystemStats,
            cruiseMissiles: cruiseMissilesStats
        )

        return combinedData
    }
}
