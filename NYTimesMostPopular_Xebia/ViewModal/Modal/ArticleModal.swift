//
//  Article.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import Foundation


enum MediaType: String {
  case pdf, image, video
}

struct Initial: Codable {
  var copyright: String
  var result: [Article]
  
  private enum InitialCodingKeys: String, CodingKey {
    case copyright
    case results = "results"
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: InitialCodingKeys.self)
    copyright = try container.decode(String.self, forKey: .copyright)
    result = try container.decode([Article].self, forKey: .results)
}
}

struct Article {
  var byline: String
  var title: String
  var url: String
  var section: String
  var publishedDate: String
  var mediaData: [Media]?
}

extension Article: Codable {
  
  private enum ArticleApiResponseCodingKeys: String, CodingKey {
    case byline = "byline"
    case title = "title"
    case url = "url"
    case section = "section"
    case publishedDate = "published_date"
    case media = "media"
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: ArticleApiResponseCodingKeys.self)
    
    byline = try container.decode(String.self, forKey: .byline)
    title = try container.decode(String.self, forKey: .title)
    url = try container.decode(String.self, forKey: .url)
    publishedDate = try container.decode(String.self, forKey: .publishedDate)
    section = try container.decode(String.self, forKey: .section)
    mediaData = try? container.decode([Media].self, forKey: .media)
    
  }
}


struct Media {
  var mediadata: [MediaMetadata]
}

extension Media: Codable {
  private enum MediaCodingKeys: String, CodingKey {
    case mediaMetadata = "media-metadata"
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: MediaCodingKeys.self)
    mediadata = try container.decode([MediaMetadata].self, forKey: .mediaMetadata)
  }
}

struct MediaMetadata: Codable {
  var url: String
}

extension MediaMetadata {
  private enum MediaMetadataCodingKeys: String, CodingKey {
    case url = "url"
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: MediaMetadataCodingKeys.self)
    url = try container.decode(String.self, forKey: .url)
   }
}

