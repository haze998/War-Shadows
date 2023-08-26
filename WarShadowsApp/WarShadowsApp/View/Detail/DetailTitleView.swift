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
    let day: Int?
    let personnelAmount: Int?
    
    // MARK: - BODY
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Text(TxtConst.detailTitle.rawValue + (date ?? ""))
                    .font(.custom(FontNames.russoRegular.rawValue, size: 25))
                    .multilineTextAlignment(.center)
                    .foregroundColor(colorOrange)
                    .padding(.bottom, 2)
                
                HStack {
                    Spacer()
                    Image(CellImages.ak.rawValue)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Text(TxtConst.dayTitle.rawValue + "\(day ?? 0)")
                        .font(.custom(FontNames.russoRegular.rawValue, size: 20))
                    .foregroundColor(colorDarkGreen)
                    Spacer()
                }
                .frame(width: .infinity, height: 50)
                .background(colorWhite)
                .cornerRadius(16)
                
                HStack {
                    Spacer()
                    Image(CellImages.coffin.rawValue)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    
                        Text(TxtConst.personnelChar.rawValue)
                            .font(.custom(FontNames.russoRegular.rawValue, size: 20))
                            .foregroundColor(colorWhite)
                    
                    Text(String(personnelAmount ?? 0))
                            .font(.custom(FontNames.russoRegular.rawValue, size: 20))
                            .foregroundColor(colorWhite)
                    Spacer()
                    } //: HSTACK
                .frame(width: .infinity, height: 50)
                .background(colorLightGreen)
                .cornerRadius(16)
            } //: VSTACK
            .padding()
        } //: HSTACK
        .background(colorDarkGreen)
        .cornerRadius(16)
    }
}

// MARK: - PREVIEW
struct DetailTitleView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTitleView(date: "00.00.0000", day: 0, personnelAmount: 0)
            .previewLayout(.sizeThatFits)
    }
}
