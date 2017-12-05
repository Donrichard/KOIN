//
//  Controller.swift
//  KOIN
//
//  Created by Richard Richard on 01/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit

extension LoginViewController {
    @objc func loginSuccessfully() {
        // Validation
        
        let vc = LoginViewController()
        let nextVC = NewsViewController()
        vc.show(nextVC, sender: nil)
    }
}
