//
//  NYT+UIImageView.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import UIKit

extension UIImageView {
  func load(url: URL) {
    DispatchQueue.global().async { [weak self] in
      if let data = try? Data(contentsOf: url) {
        if let image = UIImage(data: data) {
          DispatchQueue.main.async {
            self?.image = image
          }
        }
      }
    }
  }
  
  func downloadImage(atURL url: String?, placeholder: String?) {
    image = UIImage(named: placeholder ?? "")
    //        NetworkManager.shared.downloadImage(fromUrl: url) { [weak self] image,urlString  in
    //            if urlString != url {
    //                return
    //            }
    //            DispatchQueue.main.async {
    //                self?.image = image
    //            }
    //        }
  }
}
