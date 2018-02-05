//
//  NewsViewController.swift
//  KOIN
//
//  Created by Richard Richard on 03/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit
import PureLayout

class NewsViewController: UIViewController {
    
    // Choose Country for the first time
    var countryTableView: UITableView?
    // News Scroll View
    var newsScrollView: UIScrollView?
    var newsPageControl: UIPageControl?
    var contentWidth: CGFloat = 0.0
    // Side Menu
    var sideMenuView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeNewsScrollView()
        initializeSideMenu()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()   
    }
}
