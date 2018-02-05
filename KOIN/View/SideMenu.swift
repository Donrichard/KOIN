//
//  SideMenu.swift
//  KOIN
//
//  Created by Richard Richard on 03/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit

func createSideMenuView() -> UIView {
    let sideMenuView = UIView()
    sideMenuView.layer.backgroundColor = UIColor.darkGray.cgColor
    return sideMenuView
}

func createOpenSideMenuGesture() -> UIGestureRecognizer {
    let swipeRight = UISwipeGestureRecognizer()
    swipeRight.direction = .right
    return swipeRight
}

func createCloseSideMenuGesture() -> UIGestureRecognizer {
    let swipeLeft = UISwipeGestureRecognizer()
    swipeLeft.direction = .left
    return swipeLeft
}

func generateSideMenuViewConstraints(_ subview: UIView, superview: UIView, leading: NSLayoutConstraint) -> [NSLayoutConstraint] {
    subview.translatesAutoresizingMaskIntoConstraints = false
    let top = NSLayoutConstraint(item: subview, attribute: .top, relatedBy: .equal, toItem: superview, attribute: .top, multiplier: 1.0, constant: 0.0)
    let bottom = NSLayoutConstraint(item: subview, attribute: .bottom, relatedBy: .equal, toItem: superview, attribute: .bottom, multiplier: 1.0, constant: 0.0)
    let width = NSLayoutConstraint(item: subview, attribute: .width, relatedBy: .equal, toItem: superview, attribute: .notAnAttribute, multiplier: 1.0, constant: 140)
    return[top, leading, bottom, width]
}

extension NewsViewController {
    func initializeSideMenu() {
        sideMenuView = createSideMenuView()
        
        self.view.addSubview(sideMenuView!)
        // sideMenuLeadingConstraint
        //self.view.addConstraints(generateSideMenuViewConstraints(sideMenuView!, superview: self.view, leading: sideMenuLeadingConstraint!))
    }
}
