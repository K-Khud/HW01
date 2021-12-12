//
//  HW01App.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 4.12.2021.
//

import SwiftUI

@main
struct HW01App: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(PodcastsViewModel())
                .environmentObject(BooksViewModel())
                .environmentObject(MoviesViewModel())
            
        }
    }
}
