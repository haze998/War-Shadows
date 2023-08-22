//
//  HomeCellView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 22.08.2023.
//

import SwiftUI

struct HomeCellView: View {
    
    // MARK: - PROPERTIES
    let currentDay: Int?
    let currentLosses: Int?
    
    // MARK: - BODY
    var body: some View {
        HStack {
            VStack {
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text(String(currentDay ?? 0))
                            .font(.custom(FontNames.russoRegular.rawValue, size: 30))
                            .foregroundColor(colorLightGreen)
                        Text(TxtConst.dayOfWar.rawValue)
                            .font(.custom(FontNames.russoRegular.rawValue, size: 14))
                            .foregroundColor(colorDarkGreen)
                    } //: VSTACK
                    
                    Spacer()
                    
                    VStack (alignment: .trailing) {
                        Text(String(currentLosses ?? 0))
                            .font(.custom(FontNames.russoRegular.rawValue, size: 30))
                            .foregroundColor(colorOrange)
                        Text(TxtConst.personnel.rawValue)
                            .font(.custom(FontNames.russoRegular.rawValue, size: 14))
                            .foregroundColor(colorDarkGreen)
                    } //: VSTACK
                } //: HSTACK
            } //: VSTACK
            .padding()
        } //: HSTACK
        .background(colorWhite)
        .cornerRadius(16)
    }
}

// MARK: - PREVIEW
struct HomeCellView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCellView(currentDay: 0, currentLosses: 0)
            .previewLayout(.sizeThatFits)
    }
}
