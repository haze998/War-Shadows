//
//  HomeViewModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var lossesInfo: [LossesModel] = []
    
    // MARK: - Fetch personnel losses info
    func fetchPersonnelLosses() {
        NetworkManager.shared.getPersonnelLossesInfo { result in
            self.lossesInfo = result
        }
    }
}
