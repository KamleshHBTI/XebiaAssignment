//
//  Constants.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import Foundation


let baseURL = "https://api.nytimes.com/svc/mostpopular/v2/"
let period = 7
let APIHost = "api.nytimes.com"
let listOfSharedArticle = "viewed/\(period).json?api-key=\(NYMostConfig.key)"

struct APIKeys {
  static let byline = "byline"
  static let title = "title"
  static let url = "url"
  static let section = "section"
  static let published_date = "published_date"
  static let type = "type"
  static let metaData = "media-metadata"
  static let height = "height"
  static let width = "width"
  static let media = "media"
}
