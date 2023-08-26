//
//  DetailView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 22.08.2023.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - PROPERTIES
    let lossesData: LossesDataModel
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
//            ZStack {
                ScrollView {
                    VStack {
                        VStack(spacing: 4) {
                            DetailTitleView(date: lossesData.date, day: lossesData.day, personnelAmount: lossesData.personnel)
                        } //: VSTACK
                        HStack {
                        } //: HSTACK
                        VStack(alignment: .leading) {
                            EquipmentView(
                                title: lossesData.equip.aircraft?.title ?? "",
                                image: Image(CellImages.aircraft.rawValue),
                                value: lossesData.equip.aircraft?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.antiAircraftWarfare?.title ?? "",
                                image: Image(CellImages.antiAircraftWarfare.rawValue),
                                value: lossesData.equip.antiAircraftWarfare?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.apc?.title ?? "",
                                image: Image(CellImages.apc.rawValue),
                                value: lossesData.equip.apc?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.cruiseMissiles?.title ?? "",
                                image: Image(CellImages.cruiseMissiles.rawValue),
                                value: lossesData.equip.cruiseMissiles?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.drone?.title ?? "",
                                image: Image(CellImages.drone.rawValue),
                                value: lossesData.equip.drone?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.fieldArtillery?.title ?? "",
                                image: Image(CellImages.fieldArtillery.rawValue),
                                value: lossesData.equip.fieldArtillery?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.fuelTank?.title ?? "",
                                image: Image(CellImages.fuelTank.rawValue),
                                value: lossesData.equip.fuelTank?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.helicopter?.title ?? "",
                                image: Image(CellImages.helicopter.rawValue),
                                value: lossesData.equip.helicopter?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.militaryAuto?.title ?? "",
                                image: Image(CellImages.militaryAuto.rawValue),
                                value: lossesData.equip.militaryAuto?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.mrl?.title ?? "",
                                image: Image(CellImages.mrl.rawValue),
                                value: lossesData.equip.mrl?.value ?? 0)
                            
                        } //: VSTACK
                        VStack(alignment: .leading) {
                            EquipmentView(
                                title: lossesData.equip.navalShip?.title ?? "",
                                image: Image(CellImages.navalShip.rawValue),
                                value: lossesData.equip.navalShip?.value ?? 0)
                            EquipmentView(
                                title: lossesData.equip.tank?.title ?? "",
                                image: Image(CellImages.tank.rawValue),
                                value: lossesData.equip.tank?.value ?? 0)
                        } //: VSTACK
                    } //: VSTACK
                } //: SCROLL
                .navigationTitle("Equipment losses")
                .navigationBarTitleDisplayMode(.inline)
                .preferredColorScheme(.dark)
                .background(colorDarkGreen)
//            } //: ZSTACK
        } //: NAVIGATION
        
    }
}

// MARK: - PREVIEW
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(lossesData: LossesDataModel(date: "", day: 0, personnel: 0, statsPersonnel: .more, pow: 0, equip: CombinedEquipmentModel(date: "", day: 0, aircraft: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), helicopter: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), tank: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), apc: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), fieldArtillery: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), mrl: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), militaryAuto: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), fuelTank: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), drone: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), navalShip: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), antiAircraftWarfare: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), specialEquipment: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), mobileSRBMSystem: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), greatestLossesDirection: "", vehiclesAndFuelTanks: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""), cruiseMissiles: EquipmentStats(image: Image("fuel_tank"), value: 0, title: ""))))
    }
}


