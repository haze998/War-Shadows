//
//  HomeView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - PROPERTIES
    @StateObject private var viewModel = HomeViewModel()
    @State private var searchText = ""
    
    var filteredLossesInfo: [LossesModel] {
        if searchText.isEmpty {
            return viewModel.lossesInfo.reversed()
        } else {
            return viewModel.lossesInfo.filter { item in
                return item.day.flatMap { String($0).contains(searchText) } ?? false
            }
        }
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredLossesInfo.indices, id: \.self) { index in
                    let item = filteredLossesInfo[index]
                    if index == 0 {
                        MainHomeCell(day: item.day, date: item.date, currentLosses: item.personnel)
                    } else {
                        HomeCellView(currentDay: item.day, currentLosses: item.personnel)
                    }
                }
                .listRowBackground(Color.clear)
            } //: LIST
            .navigationBarTitle(TxtConst.navBarTitle.rawValue, displayMode: .inline)
            .listRowSeparator(.hidden)
            .listStyle(.plain)
            .background(colorDarkGreen)
            .searchable(text: $searchText)
            .preferredColorScheme(.dark)
            .onAppear {
                viewModel.fetchPersonnelLosses()
            }
        } //: NAVIGATION
    }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
