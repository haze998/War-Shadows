//
//  HomeView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - PROPERTIES
    @StateObject private var homeViewModel = HomeViewModel()
    @State private var searchedText = ""
    
    var filteredLossesInfo: [LossesDataModel] {
        if searchedText.isEmpty {
            return homeViewModel.lossesDataArray.reversed()
        } else {
            return homeViewModel.lossesDataArray.filter { item in
                return item.day.flatMap { String($0).contains(searchedText) } ?? false
            }
        }
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredLossesInfo.indices, id: \.self) { index in
                    ZStack {
                        let item = filteredLossesInfo[index]
                        if index == 0 {
                            MainHomeCell(day: item.day, date: item.date, currentLosses: item.personnel)
                        } else {
                            HomeCellView(currentDay: item.day, currentLosses: item.personnel)
                        }
                        NavigationLink(destination: DetailView(lossesData: item)) {}
                    } //: ZSTACK
                }
                .listRowBackground(Color.clear)
                
            } //: LIST
            .navigationBarTitle(TxtConst.navBarTitle.rawValue, displayMode: .inline)
            .listRowSeparator(.hidden)
            .listStyle(.plain)
            .background(colorDarkGreen)
            .searchable(text: $searchedText, prompt: TxtConst.searchPrompt.rawValue)
            .preferredColorScheme(.dark)
            .onAppear {
                homeViewModel.fetchInfo()
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
