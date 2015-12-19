//
//  HomeViewController.swift
//  Fang0
//
//  Created by TinaTien on 2015/12/19.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
var categories = ["熱門", "最新", "你可能有興趣的文章", "寶貝", "北鼻"]
    @IBOutlet weak var menuButton: UIBarButtonItem!


    override func viewDidLoad() {
    super.viewDidLoad()
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}

extension HomeViewController : UITableViewDelegate { }

extension HomeViewController : UITableViewDataSource {
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]

    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("categoryCell") as! HomeCategoryTableViewCell
        return cell
    }
    
}


