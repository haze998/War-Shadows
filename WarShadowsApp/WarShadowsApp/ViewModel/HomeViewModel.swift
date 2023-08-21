//
//  HomeViewModel.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var lossesArr: [LossesModel] = []
    
    // MARK: - Fetch personnel losses info
    func fetchPersonnelLosses() {
        NetworkManager.shared.getPersonnelLossesInfo { [weak self] result in
            guard let self = self else { return }
            self.lossesArr = result
        }
    }
}
