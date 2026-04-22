//
//  TabNavigatorView.swift
//  monna
//
//  Created by Fuad Agus Salim on 21/04/26.
//

import SwiftUI

struct TabNavigatorView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.circle.fill") {
                HomeView()
            }
//            .badge(2)

            Tab("Ask", systemImage: "plus.circle.fill") {
               DiscussionView()
            }

            Tab("Discussion", systemImage: "bubble.circle.fill") {
                DiscussionView()
         
            }
//            .badge("!")
        }.padding(.horizontal, 10)
    }
}

#Preview {
    TabNavigatorView()
}
