//
//  DetailTitleView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 23.08.2023.
//

import SwiftUI

struct DetailTitleView: View {
    
    // MARK: - PROPERTIES
    let date: String?
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Text(TxtConst.detailTitle.rawValue + (date ?? ""))
                .font(.custom(FontNames.russoRegular.rawValue, size: 20))
                .foregroundColor(colorOrange)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
    }
}

// MARK: - PREVIEW
struct DetailTitleView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTitleView(date: "00.00.0000")
            .previewLayout(.sizeThatFits)
    }
}
