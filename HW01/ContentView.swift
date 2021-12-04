//
//  ContentView.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 4.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 1

    var body: some View {
        TabView(selection: $selection) {
            GeneralView()
                .tabItem {
                    Label("Books", systemImage: "book")
                }
                .tag(0)
            GeneralView()
                .tabItem {
                    Label("Movies", systemImage: "tv")
                }
                .tag(1)
            GeneralView()
                .tabItem {
                    Label("Podcasts", systemImage: "headphones")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
