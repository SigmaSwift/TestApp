//
//  SetGradientBorder.swift
//  TestApp
//
//  Created by x.sargsyan on 18.05.21.
//  Copyright © 2021 SwiftAcademy. All rights reserved.
//

import Foundation
import UIKit

func gradient(_ button: UIButton) {
    let gradient = CAGradientLayer()
    
    gradient.frame =  CGRect(origin: .zero, size: button.frame.size)
    gradient.colors = [UIColor.red.cgColor, UIColor.orange.cgColor]
    let shape = CAShapeLayer()
    shape.lineWidth = 2
    shape.path = UIBezierPath(roundedRect: button.bounds, cornerRadius: button.layer.cornerRadius).cgPath
    
    shape.strokeColor = UIColor.black.cgColor
    shape.fillColor = UIColor.clear.cgColor
    gradient.mask = shape
    button.layer.addSublayer(gradient)

}


