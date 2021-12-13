//
//  MoviesView.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 5.12.2021.
//

import SwiftUI

struct MoviesView: View {
    @Binding var selectedLink: Int?
    var body: some View {
        NavigationView {
            MoviesListView(selectedLink: $selectedLink)
        }
    }
}

struct MoviesListView: View {
    @EnvironmentObject var viewModel: MoviesViewModel

    @Binding var selectedLink: Int?

    var body: some View {
        List {
            ForEach(0..<viewModel.names.count) { index in
                NavigationLink(tag: index, selection: $selectedLink) {
                    LazyView(MovieDetailsView(movieNumberSelected: $selectedLink))
                } label: {
                    Label(viewModel.names[index], systemImage: viewModel.iconName)
                }
            }
        }
        .navigationTitle(viewModel.title)
    }
}

//struct MoviesView_Previews: PreviewProvider {
//    static var previews: some View {
//        MoviesView(selectedLink: Binding(get: {
//            <#code#>
//        }, set: { <#Transaction#> in
//            <#code#>
//        }))
//    }
//}
