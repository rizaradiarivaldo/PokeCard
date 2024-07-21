//
//  MainApp.swift
//  PokeCard
//
//  Created by Riza Radia Rivaldo on 17/07/24.
//

import SwiftUI

struct MainApp: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Teams")
                }
        }
    }
}

#Preview {
    MainApp()
}
