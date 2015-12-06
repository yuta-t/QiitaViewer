//
//  ArticleListViewController.swift
//  QiitaViewer
//
//  Created by Yuta Tadachi on 2015/12/06.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

class ArticleListViewController: UIViewController {
    let table = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "記事一覧"
        
        table.frame = view.frame
        view.addSubview(table)
    }
}
