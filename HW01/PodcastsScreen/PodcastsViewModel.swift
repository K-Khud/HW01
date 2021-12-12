//
//  PodcastsViewModel.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 11.12.2021.
//

import SwiftUI

final class PodcastsViewModel: ObservableObject {
    @Published var title: String = "Podcasts"
    @Published var isAddNewItemShowed: Bool = false
    @Published var names = ["Tozhe Rossia",
                            "Podlodka",
                            "10/10",
                            "Joe Roghan Experience"
                            ]
    @Published var iconName: String = "ladybug"
}
