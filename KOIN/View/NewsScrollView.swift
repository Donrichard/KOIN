//
//  NewsScrollView.swift
//  KOIN
//
//  Created by Richard Richard on 22/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit

func createScrollView() -> UIScrollView {
    let newsScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height))
    newsScrollView.layer.backgroundColor = UIColor.white.cgColor
    newsScrollView.showsHorizontalScrollIndicator = false
    newsScrollView.showsVerticalScrollIndicator = false
    newsScrollView.isPagingEnabled = true
    return newsScrollView
}

func createPageControl() -> UIPageControl {
    let newsPageControl = UIPageControl()
    
    return newsPageControl
}

func generateNewsScrollViewConstraints(_ subview: UIView, superview: UIView) -> [NSLayoutConstraint] {
    let topConstraint = NSLayoutConstraint(item: subview, attribute: .top, relatedBy: .equal, toItem: superview, attribute: .top, multiplier: 1.0, constant: 0.0)
    let leadingConstraint = NSLayoutConstraint(item: subview, attribute: .leading, relatedBy: .equal, toItem: superview, attribute: .leading, multiplier: 1.0, constant: 0.0)
    let trailingConstraint = NSLayoutConstraint(item: subview, attribute: .trailing, relatedBy: .equal, toItem: superview, attribute: .trailing, multiplier: 1.0, constant: 0.0)
    let bottomConstraint = NSLayoutConstraint(item: subview, attribute: .bottom, relatedBy: .equal, toItem: superview, attribute: .bottom, multiplier: 1.0, constant: 0.0)
    return [topConstraint, leadingConstraint, trailingConstraint, bottomConstraint]
}

extension NewsViewController: UIScrollViewDelegate {
    func initializeNewsScrollView() {
        newsScrollView = createScrollView()
        newsPageControl = createPageControl()
        newsScrollView?.delegate = self
        self.view.addSubview(newsScrollView!)
        self.view.addConstraints(generateNewsScrollViewConstraints(newsScrollView!, superview: self.view))
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
}
