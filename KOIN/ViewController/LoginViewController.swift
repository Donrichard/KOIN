//
//  ViewController.swift
//  KOIN
//
//  Created by Richard Richard on 01/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        initializeView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initializeView() {
        self.view.addSubview(createLoginImage())
        self.view.addSubview(createLoginButton())
    }
}
