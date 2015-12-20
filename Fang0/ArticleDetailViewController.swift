//
//  ArticleDetailViewController.swift
//  Fang0
//
//  Created by TinaTien on 2015/12/20.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class ArticleDetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var articleContent: UILabel!
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var fanspagePictureImage: UIImageView!
    @IBOutlet weak var postDateLabel: UILabel!
    @IBOutlet weak var articleTitleLabel: UILabel!
    @IBOutlet weak var fanspageNameLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSizeMake(302,2000);

        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // Load the pages that are now on screen
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
