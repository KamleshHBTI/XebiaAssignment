//
//  ArticleViewModal.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import Foundation


class ArticleViewModal: NSObject {
  
  var networkManager = NetworkManager()
  // MARK:- Properties
  private var articles: [Article]?
  
  // MARK:- Dependency Injection (DI)
  init(articles: [Article] = []) {
    self.articles = articles
  }
  
  // MARK:- Handling methods
  func article(for indexPath: IndexPath) -> Article {
    return (articles?[indexPath.row])!
  }
  
  func numberOfItems() -> Int {
    return articles?.count ?? 0
  }
  
  //Call API for get most popular API
  func sendPopularNewsRequest(completion:(() -> ())?) {
    
    networkManager.getMostPopularArticle(period: 7) { (article, error) in
      if error == nil {
        self.articles = article
        completion!()
      }
    }
  }
}


