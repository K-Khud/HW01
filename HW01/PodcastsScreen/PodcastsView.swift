//
//  PodcastsView.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 5.12.2021.
//

import SwiftUI

struct PodcastsView: View {
    var body: some View {
        NavigationView {
            PodcastsListView()
        }
    }
}

struct PodcastsListView: View {
    @EnvironmentObject var viewModel: PodcastsViewModel

    var body: some View {
        VStack {
        List {
            ForEach(viewModel.names, id: \.self) { name in
                Label(name, systemImage: viewModel.iconName)
            }
        }
            Button { viewModel.isAddNewItemShowed.toggle() }
        label: {
                Text("Add")
                    .foregroundColor(.red)
                    .buttonStyle(.borderless)
        }.sheet(isPresented: $viewModel.isAddNewItemShowed) {
            PodcastDetailView()
        }
        .buttonStyle(.bordered)
            Spacer(minLength: 50)
        }
        .navigationTitle(viewModel.title)
    }
}
struct PodcastsView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastsView()
    }
}
