//
//  ContentView.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 4.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 0
    @State var selectedMovie: Int?

    var body: some View {
        TabView(selection: $selection) {
            GeneralBooksView(tabSelection: $selection, movieSelected: $selectedMovie)
                .tabItem {
                    Label("Books", systemImage: "book")
                }
                .tag(0)
            MoviesView(selectedLink: $selectedMovie)
                .tabItem {
                    Label("Movies", systemImage: "tv")
                }
                .tag(1)
            PodcastsView()
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
