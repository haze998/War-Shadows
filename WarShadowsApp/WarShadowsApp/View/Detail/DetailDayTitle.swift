//
//  DetailDayTitle.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 25.08.2023.
//

import SwiftUI

struct DetailDayTitle: View {
    
    // MARK: - PROPERTIES
    let day: Int
    
    var body: some View {
        HStack {
            Text(TxtConst.dayTitle.rawValue + "\(day)")
                .font(.custom(FontNames.russoRegular.rawValue, size: 20))
                .foregroundColor(colorLightGreen)
            .multilineTextAlignment(.center)
        } //: HSTACK
    }
}

struct DetailDayTitle_Previews: PreviewProvider {
    static var previews: some View {
        DetailDayTitle(day: 0)
            .previewLayout(.sizeThatFits)
    }
}
