//
//  MainHomeCell.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 22.08.2023.
//

import SwiftUI

struct MainHomeCell: View {
    
    // MARK: - PROPERTIES
    let day: Int?
    let date: String?
    let currentLosses: Int?
    
    // MARK: - BODY
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Text(String(day ?? 0))
                    .font(.custom(FontNames.russoRegular.rawValue, size: 90))
                    .foregroundColor(colorLightGreen)
                
                Text(TxtConst.dayOfWar.rawValue)
                    .font(.custom(FontNames.russoRegular.rawValue, size: 30))
                    .foregroundColor(colorDarkGreen)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(TxtConst.dateOfWar.rawValue)
                            .font(.custom(FontNames.russoRegular.rawValue, size: 14))
                            .foregroundColor(colorDarkGreen)
                        
                        Text(date ?? "")
                            .font(.custom(FontNames.russoRegular.rawValue, size: 14))
                            .foregroundColor(colorLightGreen)
                    } //: VSTACK
                    .padding(.top, 8)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text(TxtConst.personnelChar.rawValue)
                            .font(.custom(FontNames.russoRegular.rawValue, size: 14))
                            .foregroundColor(colorDarkGreen)
                        
                        Text(String(currentLosses ?? 0))
                            .font(.custom(FontNames.russoRegular.rawValue, size: 14))
                            .foregroundColor(colorOrange)
                        
                    } //: VSTACK
                    .padding(.top, 8)
                } //: HSTACK
            } //: VSTACK
            .padding()
        } //: HSTACK
        .background(colorWhite)
        .cornerRadius(16)
    }
}

// MARK: - PREVIEW
struct MainHomeCell_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeCell(day: 0, date: "00.00.0000", currentLosses: 0)
            .previewLayout(.sizeThatFits)
    }
}
