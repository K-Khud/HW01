//
//  MovieDetailsView.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 5.12.2021.
//

import SwiftUI

struct MovieDetailsView: View {
    @Binding var movieNumberSelected: Int?
    @EnvironmentObject var viewModel: MoviesViewModel

    var body: some View {
        Spacer()
        Spacer()
        Text(viewModel.names[movieNumberSelected ?? 0])
            .fontWeight(.bold)
        Spacer()
        Text("some details about the movie")
        Spacer()
        Spacer()
    }
}

// TODO: - Закоментировала, потому что не поняла как для preview передать @Binding var
//struct MovieDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieDetailsView()
//    }
//}
