//
//  NYT+UIImageView.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import UIKit

extension UIImageView {
  func load(url: URL) -> Data? {
      if let data = try? Data(contentsOf: url) {
        if let image = UIImage(data: data) {
          DispatchQueue.main.async {
            self.image = image
          }
        }
        return data
      }
    return nil
  }
}
