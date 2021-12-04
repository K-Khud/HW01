//
//  BlankView.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 4.12.2021.
//

import SwiftUI

struct GeneralView: View {
    var body: some View {
        NavigationView() {
            BlankView()
        }
    }
}
struct BlankView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView()
    }
}
