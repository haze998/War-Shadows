//
//  LossesModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import Foundation

// MARK: - LossesModel
struct LossesModel: Codable, Identifiable {
    let id = UUID()
    let date: String?
    let day, personnel: Int?

    enum CodingKeys: String, CodingKey {
        case date, day, personnel
    }
}
