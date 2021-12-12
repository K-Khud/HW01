//
//  CustomSUIView.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 12.12.2021.
//
import UIKit
import SwiftUI

struct CustomSUIView: UIViewRepresentable {
    @Binding var isDefault: Bool
    func makeUIView(context: Context) -> CustomView {
        let v = CustomView()
        return v
    }

    func updateUIView(_ uiView: CustomView, context: Context) {
        uiView.isDefault = isDefault
            uiView.changeColor()
    }
}
