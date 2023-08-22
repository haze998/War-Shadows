//
//  LossesModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import Foundation

// MARK: - LossesModel
struct LossesModel: Codable, Identifiable {
    var id = UUID()
    let date: String?
    let day, personnel: Int?
    let statsPersonnel: Personnel?
    let pow: Int?

    enum CodingKeys: String, CodingKey {
        case date, day, personnel
        case statsPersonnel = "personnel*"
        case pow = "POW"
    }
}

enum Personnel: String, Codable {
    case about = "about"
    case more = "more"
}
