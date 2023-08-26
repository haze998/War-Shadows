//
//  LossesDataModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 23.08.2023.
//

import Foundation

struct LossesDataModel: Identifiable {
    var id = UUID()
    let date: String?
    let day, personnel: Int?
    let statsPersonnel: Personnel?
    let pow: Int?
    
    let equip: CombinedEquipmentModel
}
