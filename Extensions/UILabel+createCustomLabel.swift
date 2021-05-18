//
//  UILabel+createCustomLabel.swift
//  TestApp
//
//  Created by x.sargsyan on 18.05.21.
//  Copyright © 2021 SwiftAcademy. All rights reserved.
//

import Foundation
import UIKit


extension UILabel {
    
    func createCustomLabel(text: String, fontSize: Float = 12, isBold: Bool = false, lines: Int = 2) -> UILabel {
        let customLabel = UILabel()
        customLabel.text = text
        customLabel.translatesAutoresizingMaskIntoConstraints = false
        customLabel.font = UIFont.systemFont(ofSize: CGFloat(fontSize))
        if isBold {
          customLabel.font = UIFont.boldSystemFont(ofSize: CGFloat(fontSize))
        }
        
        customLabel.textColor = .black
        customLabel.numberOfLines = lines
        return customLabel
    }
}
