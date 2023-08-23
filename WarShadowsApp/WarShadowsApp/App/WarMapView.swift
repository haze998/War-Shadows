//
//  WarMapView.swift
//  WarShadowsApp
//
//  Created by Evgeniy Docenko on 21.08.2023.
//

import SwiftUI

struct WarMapView: View {
    var body: some View {
        NavigationView {
            WarMapWebView(urlString: "https://deepstatemap.live/")
                .navigationBarTitle("Deep State Map", displayMode: .inline)
        }
        .preferredColorScheme(.dark)
    }
}

struct WarMapView_Previews: PreviewProvider {
    static var previews: some View {
        WarMapView()
    }
}
