//
//  MainView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.init(name: FontNames.russoRegular.rawValue, size: 15)!], for: .normal)
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                        Image(systemName: "chart.xyaxis.line")
                        Text("Losses")
                }
            
            WarMapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("War Map")
                }
        } //: TAB
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
