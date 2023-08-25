//
//  LossesDataModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 23.08.2023.
//

import SwiftUI

struct LossesDataModel: Identifiable {
    var id = UUID()
    let date: String?
    let day: Int?
    let title: String?
    let amount: Int?
    let image: Image
}
