//
//  ViewController+ Extensions.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import UIKit

extension UIViewController{
  func showProgressView(onWindow: Bool) {
//    let frame = onWindow ? UIScreen.main.bounds : view.bounds
//    let progressView = ProgressView(frame: frame)
//    onWindow ? UIApplication.shared.keyWindow?.addSubview(progressView) : view.addSubview(progressView)
  }
  
  func hideProgressView() {
    DispatchQueue.main.async { [weak self] in
//      if let progressView = self?.view.subviews.first(where: { $0.isKind(of: ProgressView.self)}) {
//        progressView.removeFromSuperview()
//      } else if let progressView = UIApplication.shared.keyWindow?.subviews.first(where: { $0.isKind(of: ProgressView.self)})  {
//        progressView.removeFromSuperview()
//      }
    }
  }
}
