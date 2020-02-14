//
//  ViewController.swift
//  NYTimesMostPopular_Xebia
//
//  Created by Kamlesh on 13/02/20.
//  Copyright © 2020 DMI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  let viewModel = {return ArticleViewModal()}()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    initialSettingsAtViewLoad()
  }
  
  private func initialSettingsAtViewLoad() {
    setupNavigationBar()
    viewModel.sendPopularNewsRequest(completion: {
      DispatchQueue.main.async {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.reloadData()
      }
    })
  }
  
  private func setupNavigationBar() {
    navigationController?.navigationBar.barTintColor = UIColor.white
    navigationController?.navigationBar.backgroundColor = UIColor.white
  }
  
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.numberOfItems()
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: NYArticleTableCell.ID, for: indexPath) as! NYArticleTableCell
    cell.bind(news: self.viewModel.article(for: indexPath))
    return cell
  }
  
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
  
  
}

