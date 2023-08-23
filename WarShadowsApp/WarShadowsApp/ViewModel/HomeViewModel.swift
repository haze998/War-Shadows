//
//  HomeViewModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published private(set) var lossesInfo: [LossesModel] = []
    @Published private(set) var equipmentInfo: [EquipmentModel] = []
    
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
        }
    }
    
    func convertToArray(_ equip: EquipmentModel?) -> [LossesDataModel] {
        var lossesDataArray: [LossesDataModel] = []
        
        if let equip = equip {
            let equipmentData: [(title: String, keyPath: KeyPath<EquipmentModel, Int?>, image: Image?)] = [
                ("Aircraft destroyed: ", \.aircraft, aircraft),
                ("Helicopter destroyed: ", \.helicopter, helicopter),
                ("Tank destroyed: ", \.tank, tank),
                ("APC destroyed: ", \.apc, apc),
                ("Artillery destroyed: ", \.fieldArtillery, fieldArtillery),
                ("MRL destroyed: ", \.mrl, mrl),
                ("MilitaryAuto destroyed: ", \.militaryAuto, militaryAuto),
                ("FuelTank destroyed: ", \.fuelTank, fuelTank),
                ("Drone destroyed: ", \.drone, drone),
                ("NavalShip destroyed: ", \.navalShip, navalShip),
                ("AntiAircraft destroyed: ", \.antiAircraftWarfare, antiAircraftWarfare),
                ("CruiseMissiles destroyed: ", \.cruiseMissiles, cruiseMissiles)
            ]
            
            for data in equipmentData {
                let amount = equip[keyPath: data.keyPath]
                if amount ?? 0 > 0 {
                    lossesDataArray.append(LossesDataModel(title: data.title, amount: amount, image: data.image!))
                }
            }
        }
        
        return lossesDataArray
    }
}
