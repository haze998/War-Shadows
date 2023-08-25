//
//  HomeViewModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    
//    @Published private(set) var lossesDataArray: [LossesDataModel] = []

    @Published private(set) var lossesInfo: [LossesModel] = []
    @Published private(set) var equipmentInfo: [EquipmentModel] = []
    
    func fetchInfo() {
        fetchPersonnelLosses()
        fetchEquipmentLosses()
//        combineData()
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
        }
    }
    
//    func convertToArray(_ losses: LossesModel?, _ equip: EquipmentModel?) -> [LossesDataModel] {
//
//        if let date = losses?.date {
//            lossesDataArray.append(LossesDataModel(date: date,
//                                                   day: losses?.day,
//                                                   title: "", amount: 0,
//                                                   image: Image("")))
//        }
//
//        if let day = losses?.day {
//            lossesDataArray.append(LossesDataModel(date: losses?.date,
//                                                   day: day,
//                                                   title: "",
//                                                   amount: 0,
//                                                   image: Image("")))
//        }
//
//        if let aircrafts = equip?.aircraft {
//            lossesDataArray.append((LossesDataModel(date: equip?.date,
//                                                    day: equip?.day,
//                                                    title: equipmentLosses.aircraft,
//                                                    amount: aircrafts,
//                                                    image: aircraft)))
//        }
//
////        if let helicopters = equip?.helicopter {
////            lossesDataArray.append((LossesData(title: "Helicopter destroyed: ",
////                                               amount: helicopters,
////                                               image: .helicopter)))
////        }
////
////        if let tanks = equip?.tank {
////            lossesDataArray.append((LossesData(title: "Tank destroyed: ",
////                                               amount: tanks,
////                                               image: .tank)))
////        }
////
////        if let apcs = equip?.APC {
////            lossesDataArray.append((LossesData(title: "APC destroyed: ",
////                                               amount: apcs,
////                                               image: .APC)))
////        }
////
////        if let artilleries = equip?.artillery {
////            lossesDataArray.append((LossesData(title: "Artillery destroyed: ",
////                                               amount: artilleries,
////                                               image: .artillery)))
////        }
////
////        if let mrls = equip?.MRL {
////            lossesDataArray.append((LossesData(title: "MRL destroyed: ",
////                                               amount: mrls,
////                                               image: .MRL)))
////        }
////
////        if let militaryAutos = equip?.militaryAuto {
////            lossesDataArray.append((LossesData(title: "MilitaryAuto destroyed: ",
////                                               amount: militaryAutos,
////                                               image: .militaryAuto)))
////        }
////
////        if let fuelTanks = equip?.fuelTank {
////            lossesDataArray.append((LossesData(title: "FuelTank destroyed: ",
////                                               amount: fuelTanks,
////                                               image: .fuelTank)))
////        }
////
////        if let drones = equip?.drone {
////            lossesDataArray.append((LossesData(title: "Drone destroyed: ",
////                                               amount: drones,
////                                               image: .drone)))
////        }
////
////        if let navalShips = equip?.navalShip {
////            lossesDataArray.append((LossesData(title: "NavalShip destroyed: ",
////                                               amount: navalShips,
////                                               image: .ship)))
////        }
////
////        if let antiAircrafts = equip?.antiAircraft {
////            lossesDataArray.append((LossesData(title: "AntiAircraft destroyed: ",
////                                               amount: antiAircrafts,
////                                               image: .airDefense)))
////        }
////
////        if let specialEquips = equip?.specialEquip {
////            lossesDataArray.append((LossesData(title: "Special Equip destroyed: ",
////                                               amount: specialEquips,
////                                               image: .specialEquip)))
////        }
////
////        if let missiles = equip?.cruiseMissiles {
////            lossesDataArray.append((LossesData(title: "CruiseMissiles destroyed: ",
////                                               amount: missiles,
////                                               image: .missle)))
////        }
////
////        if let vehiclesAndFuelTanks = equip?.vehiclesAndFuelTanks {
////            lossesDataArray.append((LossesData(title: "Vehicles and fueltanks: ",
////                                               amount: vehiclesAndFuelTanks,
////                                               image: .fuelTank)))
////        }
//
//        return lossesDataArray
//    }
//
//    func convertCombineData(_ losses: LossesModel?, _ equip: EquipmentModel?) -> [LossesDataModel] {
//        var lossesDataArray: [LossesDataModel] = []
//
//        if let losses = losses,
//           let equip = equip {
//            let combineData: [(title: String, keyPath: KeyPath<EquipmentModel, Int?>, image: Image?)] = [
//            ]
//        }
//    }
    
//    func convertToArray(_ equip: EquipmentModel?) -> [LossesDataModel] {
////        var lossesDataArray: [LossesDataModel] = []
//
//        if let equip = equip {
//            let equipmentData: [(title: String, keyPath: KeyPath<EquipmentModel, Int?>, image: Image?)] = [
//                ("Aircraft destroyed: ", \.aircraft, aircraft),
//                ("Helicopter destroyed: ", \.helicopter, helicopter),
//                ("Tank destroyed: ", \.tank, tank),
//                ("APC destroyed: ", \.apc, apc),
//                ("Artillery destroyed: ", \.fieldArtillery, fieldArtillery),
//                ("MRL destroyed: ", \.mrl, mrl),
//                ("MilitaryAuto destroyed: ", \.militaryAuto, militaryAuto),
//                ("FuelTank destroyed: ", \.fuelTank, fuelTank),
//                ("Drone destroyed: ", \.drone, drone),
//                ("NavalShip destroyed: ", \.navalShip, navalShip),
//                ("AntiAircraft destroyed: ", \.antiAircraftWarfare, antiAircraftWarfare),
//                ("CruiseMissiles destroyed: ", \.cruiseMissiles, cruiseMissiles)
//            ]
//
//            for data in equipmentData {
//                let amount = equip[keyPath: data.keyPath]
//                if amount ?? 0 > 0 {
//                    lossesDataArray.append(LossesDataModel(title: data.title, amount: amount, image: data.image!))
//                }
//            }
//        }
//
//        return lossesDataArray
//    }
    
//    func combineData() {
//        for personnel in self.lossesInfo {
//            for equipment in self.equipmentInfo {
//                if personnel.date == equipment.date {
//                    lossesDataArray.append(LossesDataModel(
//                        date: personnel.date,
//                        day: personnel.day,
//                        title: "",
//                        amount: 0,
//                        image: Image("")))
////                    self.lossesDataArray.append(LossesData(
////                        date: personnel.date,
////                        day: personnel.day,
////                        personnelAmount: personnel.personnelAmount,
////                        aircraft: equipment.aircraft,
////                        helicopter: equipment.helicopter,
////                        greatestLossesDirection: equipment.greatestLossesDirection,
////                        lossesStats: self.getLossesStats(personnel: personnel, equipment: equipment)
////                    ))
//                }
//            }
//        }
//    }

}
