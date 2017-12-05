//
//  Button.swift
//  KOIN
//
//  Created by Richard Richard on 03/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit

func createLoginButton() -> UIView {
    let loginButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    loginButton.setTitle("Login", for: .normal)
    let tap = UITapGestureRecognizer(target: loginButton, action: #selector(LoginViewController.loginSuccessfully))
    loginButton.addGestureRecognizer(tap)
    return loginButton as UIView
}
