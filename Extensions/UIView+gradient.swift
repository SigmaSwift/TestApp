//
//  UIView+gradient.swift
//  TestApp
//
//  Created by x.sargsyan on 18.05.21.
//  Copyright © 2021 SwiftAcademy. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
      @discardableResult
      func applyGradient(colours: [UIColor]) -> CAGradientLayer {
          return self.applyGradient(colours: colours, locations: nil)
      }

      @discardableResult
      func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
          let gradient: CAGradientLayer = CAGradientLayer()
          gradient.frame = self.bounds
          gradient.colors = colours.map { $0.cgColor }
          gradient.locations = locations
          self.layer.insertSublayer(gradient, at: 0)
          return gradient
      }
  }
