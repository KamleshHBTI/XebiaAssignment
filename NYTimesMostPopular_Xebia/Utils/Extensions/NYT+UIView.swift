//
//  UIView+Extensions.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import UIKit

extension UIView {
  
  func getShadow(radius: CGFloat, color: UIColor = UIColor.black.withAlphaComponent(0.5)) {
    layer.masksToBounds = false
    layer.shadowColor = color.cgColor
    layer.shadowOpacity = 0.2
    layer.shadowOffset = CGSize(width: -5, height: 1)
    layer.shadowRadius = radius
    layer.shadowPath = UIBezierPath(rect: bounds).cgPath
    layer.shouldRasterize = true
    layer.rasterizationScale = true ? UIScreen.main.scale : 1
  }
}
