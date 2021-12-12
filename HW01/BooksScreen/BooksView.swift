//
//  BlankView.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 4.12.2021.
//

import SwiftUI

struct GeneralBooksView: View {
    @Binding var tabSelection: Int
    @Binding var movieSelected: Int?

    var body: some View {
        NavigationView() {
            BooksView(tabSelection: $tabSelection, movieSelected: $movieSelected)
        }
    }
}
struct BooksView: View {
    @State var isDefault: Bool = true
    @Binding var tabSelection: Int
    @Binding var movieSelected: Int?

    @EnvironmentObject var viewModel: BooksViewModel

    var body: some View {
        ZStack {
            CustomSUIView(isDefault: $isDefault)
                .ignoresSafeArea()
                .onTapGesture {
                    isDefault = !isDefault
                }
            VStack {
                List {
                    ForEach(viewModel.names, id: \.self) { name in
                        Label(name, systemImage: viewModel.iconName)
                    }
                        }.onAppear() {
                            UITableView.appearance().backgroundColor = UIColor.clear
                            UITableViewCell.appearance().backgroundColor = UIColor.clear
                        }
                Button {
                    tabSelection = 1
                    movieSelected = 0
                } label: {
                    Label("Open Movies", systemImage: "arrow.down.right")
                }
                Spacer(minLength: 50)
                Text("tap here to change the color")
                    .foregroundColor(.gray)
                Spacer(minLength: 50)
            }
            .background(.clear)
        }
        .background(.clear)

        .navigationTitle(viewModel.title)
    }
}

//struct GeneralBooksView_Previews: PreviewProvider {
//    @Binding var tabSelection: Int = 0
//    static var previews: some View {
//        BooksView(tabSelection: $tabSelection)
//    }
//}
