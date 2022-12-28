//
//  UIButton + Extestion.swift
//  IOS8-HW-11-DubinaRoman
//
//  Created by admin on 28.12.2022.
//

import UIKit

extension UIButton {
    func shadowSetting(_ button: UIButton) {
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
    }
}
