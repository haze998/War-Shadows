//
//  EquipmentView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 26.08.2023.
//

import SwiftUI

struct EquipmentView: View {
    let title: String
    let image: Image
    let value: Int
    
    var body: some View {
        HStack {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 50)
                .padding(.leading, 16)
            
            Text(title)
                .font(.custom(FontNames.russoRegular.rawValue, size: 20))
                .foregroundColor(colorDarkGreen)
            
            Text("\(value)")
                .font(.custom(FontNames.russoRegular.rawValue, size: 20))
                .foregroundColor(colorOrange)
            
            Spacer()
        }
        .frame(maxWidth: .infinity) 
        .background(colorWhite)
        .cornerRadius(16)
        .padding(8)
    }
}


struct EquipmentView_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentView(title: "Text", image: Image(CellImages.cruiseMissiles.rawValue), value: 200)
            .previewLayout(.sizeThatFits)
    }
}
