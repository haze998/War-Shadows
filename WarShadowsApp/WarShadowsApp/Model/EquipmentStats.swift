//
//  EquipmentStats.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 26.08.2023.
//

import SwiftUI

struct EquipmentStats: Identifiable, Hashable {
    let id = UUID()
    let image: Image
    let value: Int?
    let title: String?
    
    static func == (lhs: EquipmentStats, rhs: EquipmentStats) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
