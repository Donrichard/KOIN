//
//  Controller.swift
//  KOIN
//
//  Created by Richard Richard on 01/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit

extension LoginViewController {
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y = 0
            }
        }
    }
    @objc func loginSuccessfully() {
        // Validation
        let nextVC:NewsViewController = NewsViewController()
        self.navigationController?.show(nextVC, sender: nil)
        defer {
            usernameTF?.text = ""
            passwordTF?.text = ""
        }
    }
}

public func generateConstraints(_ subview: UIView, view: UIView) -> [NSLayoutConstraint] {
    subview.translatesAutoresizingMaskIntoConstraints = false
    let centerXConstraint = NSLayoutConstraint(item: subview, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
    let bottomConstraint = NSLayoutConstraint(item: subview, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -60)
    let widthConstraint = NSLayoutConstraint(item: subview, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 250)
    let heightConstraint = NSLayoutConstraint(item: subview, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 180)
    return [centerXConstraint, bottomConstraint, widthConstraint, heightConstraint]
}

public func getJSON() {
    
}

//public func fetchData() -> [News] {
//    for news
//}

