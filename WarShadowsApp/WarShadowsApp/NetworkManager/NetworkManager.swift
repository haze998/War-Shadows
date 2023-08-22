//
//  NetworkManager.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() { }
    
    // MARK: - Get equipment losses info
    func getEquipmentLossesInfo(completion: @escaping([EquipmentModel]) -> Void) {
        guard let url = URL(string: ApiURL.lossesEquipmentURL.rawValue) else {
            fatalError("Invalid URL")
        }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let response = try decoder.decode([EquipmentModel].self, from: data)
                DispatchQueue.main.async {
                    completion(response)
                }
            } catch {
                print(String(describing: error))
            }
        }
        task.resume()
    }
    
    // MARK: - Get personnel losses info
    func getPersonnelLossesInfo(completion: @escaping([LossesModel]) -> Void) {
        guard let url = URL(string: ApiURL.personalLossesURL.rawValue) else {
            fatalError("Invalid URL")
        }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let response = try decoder.decode([LossesModel].self, from: data)
                DispatchQueue.main.async {
                    completion(response)
                }
            } catch {
                print(String(describing: error))
            }
        }
        task.resume()
    }
}
