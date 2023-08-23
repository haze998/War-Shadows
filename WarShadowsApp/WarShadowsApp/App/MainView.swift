//
//  MainView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.init(name: FontNames.russoRegular.rawValue, size: 15)!, NSAttributedString.Key.foregroundColor: UIColor(cgColor: .init(red: 1, green: 0.44, blue: 0.24, alpha: 1))], for: .normal)
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                        Image("poison")
                        Text("Home")
                }
            
            WarMapView()
                .tabItem {
                    Image("map")
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
