//
//  NYNewsTableCell.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import Foundation
import UIKit
class NYArticleTableCell: UITableViewCell {
  
  static var ID = "NYArticleTableCell"
  
  @IBOutlet weak var timeStemp: UILabel!
  @IBOutlet weak var typeLabel: UILabel!
  @IBOutlet weak var byLineLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var imageItem: UIImageView!
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  func bind(news: Article?) {
    timeStemp.text = news?.publishedDate ?? "N/A"
    titleLabel.text = news?.title ?? "N/A"
    byLineLabel.text = news?.byline ?? "N/A"
    typeLabel.text = news?.section ?? "N/A"
    if  let mediaUrl = news?.mediaData?.first, let media =  mediaUrl.mediadata.last, let imageURL = URL(string: media.url){
      //TODO: set Media File i have some doubts in it thats why i havnt written it
      imageItem.load(url: imageURL)
      
    }
    
  }
  
}


