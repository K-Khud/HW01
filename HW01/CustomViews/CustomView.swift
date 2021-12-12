//
//  CustomView.swift
//  HW01
//
//  Created by Ekaterina Khudzhamkulova on 12.12.2021.
//

import UIKit

final class CustomView: UIView {
    var isDefault = true
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.opacity = 0.3
        isDefault = true
        isUserInteractionEnabled = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func changeColor() {
        UIView.animate(withDuration: 0.3) {
            self.layer.backgroundColor = self.isDefault ? UIColor.green.cgColor : UIColor.systemPink.cgColor
        }
    }
}
