//
//  ViewController.swift
//  KOIN
//
//  Created by Richard Richard on 01/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginFormView: UIView?
    var forgetPasswordView: UIView?
    var usernameTF: UITextField?
    var passwordTF: UITextField?
    var forgetPasswordLabel: UILabel?
    var forgetPasswordTF: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        self.navigationController?.isNavigationBarHidden = true
        initializeView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
