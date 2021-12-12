//
//  MoviesViewModel.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 12.12.2021.
//

import SwiftUI

final class MoviesViewModel: ObservableObject {
    @Published var title: String = "Movies"
    @Published var names = ["Hotel Rwanda",
                            "Buffalo 66",
                            "The Fall",
                            "It follows"
                            ]
    @Published var iconName: String = "bolt"
}
