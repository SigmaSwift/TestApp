//
//  UIButton+createCustomButton.swift
//  TestApp
//
//  Created by x.sargsyan on 18.05.21.
//  Copyright © 2021 SwiftAcademy. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func createCustomButton(title: String, titleColor: UIColor = .black, background: UIColor = .white, isBold: Bool = true) -> UIButton {
        
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = background
        button.clipsToBounds = true

        if isBold {
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
        }
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    func setFrameForGradient(width: Int = 350, height: Int = 62) {
        self.frame = CGRect(x: 0, y: 0, width: width, height: height)
    }
    
}
