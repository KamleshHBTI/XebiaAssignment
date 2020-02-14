//
//  AlertManager.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import UIKit

class AlertView: UIView {
  
  func displayAlert(with message: String) -> UIAlertController {
    let alertController = UIAlertController(title: "Xebia", message: message, preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    return alertController
  }
}

