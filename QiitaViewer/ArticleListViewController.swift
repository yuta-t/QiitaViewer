//
//  ArticleListViewController.swift
//  QiitaViewer
//
//  Created by Yuta Tadachi on 2015/12/06.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ArticleListViewController: UIViewController {
    var articles: [[String: String?]] = []
    let table = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "記事一覧"
        
        table.frame = view.frame
        view.addSubview(table)
    func getArticles() {
        Alamofire.request(.GET, "https://qiita.com/api/v2/items")
            .responseJSON { response in
                guard let object = response.result.value else {
                    return
                }
                
                let json = JSON(object)
                json.forEach { (_, json) in
                    let article: [String: String?] = [
                        "title": json["title"].string,
                        "userId": json["user"]["id"].string
                    ]
                    self.articles.append(article)
                }
                self.table.reloadData()
        }
    }
    }
}
