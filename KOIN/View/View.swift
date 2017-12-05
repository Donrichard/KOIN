//
//  View.swift
//  KOIN
//
//  Created by Richard Richard on 03/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit

func createLoginImage() -> UIView {
    let loginImage = UIImageView(frame: CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height))
    loginImage.image = UIImage(named: ImageName.logoName)
    return loginImage as UIView
}
