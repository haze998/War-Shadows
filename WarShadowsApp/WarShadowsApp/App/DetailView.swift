//
//  DetailView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 22.08.2023.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - PROPERTIES
//    let lossesData: EquipmentModel?
    let equipmentData: [LossesDataModel]?
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    HStack {
//                        DetailTitleView(date: lossesData?.date)
                    } //: HSTACK
                    
                } //: VSTACK
            } //: SCROLL
        }
        .background(colorDarkGreen)
    }
}

// MARK: - PREVIEW
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let dummyEquipmentData: [LossesDataModel] = [
            LossesDataModel(title: "Aircraft destroyed: ", amount: 10, image: Image(systemName: "airplane")),
            LossesDataModel(title: "Tank destroyed: ", amount: 5, image: Image(systemName: "flame")),
        ]
        
        return DetailView(equipmentData: dummyEquipmentData)
    }
}


