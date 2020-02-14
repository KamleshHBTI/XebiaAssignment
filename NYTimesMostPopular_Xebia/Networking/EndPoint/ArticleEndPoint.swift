//
//  MovieEndPoint.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//


import Foundation


enum NetworkEnvironment {
  case developement
  case production
  case staging
}

public enum ArticleApi {
  case mostPopular(period:Int)
  case article(period:Int)
}

extension ArticleApi: EndPointType {
  
  var environmentBaseURL : String {
    switch NetworkManager.environment {
    case .production: return "https://api.nytimes.com/svc/mostpopular/v2/viewed/7.json?api-key="
    case .developement: return "https://api.nytimes.com/svc/mostpopular/v2/viewed/7.json?api-key="
    case .staging: return "https://api.nytimes.com/svc/mostpopular/v2/viewed/7.json?api-key="
    }
  }
  
  var baseURL: URL {
    guard let url = URL(string: environmentBaseURL + path) else { fatalError("baseURL could not be configured.")}

      return url
  }
  
  var path: String {
    switch self {
    case .mostPopular(let _):
      return "\(NYMostConfig.key)"
    case .article:
      return "\(NYMostConfig.key)"
    }
  }
  
  var httpMethod: HTTPMethod {
    return .get
  }
  
  var task: HTTPTask {
    switch self {
    case .mostPopular(let page):
      return .requestParameters(bodyParameters: nil,
                                bodyEncoding: .urlEncoding,
                                urlParameters: ["page":page,
                                                "api_key":NetworkManager.ArticleAPIKey])
      
    case .article:
      return .requestParameters(bodyParameters: nil,
      bodyEncoding: .urlEncoding,
      urlParameters:nil)
    }
  }
  
  var headers: HTTPHeaders? {
    return nil
  }
}


