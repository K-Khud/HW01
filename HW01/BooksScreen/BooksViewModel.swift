//
//  BooksViewModel.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 12.12.2021.
//

import SwiftUI

final class BooksViewModel: ObservableObject {
    @Published var title: String = "Books"
    @Published var names = ["Thinking fast and slow",
                            "Dune",
                            "The gift",
                            "What I talk about when I talk about running",
                            "Grokking Algorithms"
    ]
    @Published var iconName = "leaf"
}
