//
//  News.swift
//  KOIN
//
//  Created by Richard Richard on 03/12/17.
//  Copyright © 2017 Richard Richard. All rights reserved.
//

import UIKit

class News {
    var oid: String?
    var title: String?
    var images: [UIImage]?
    var detail: String?
    var ads: [UIView]?
    var adsLink: [String]?
    var linkType: [String]?
    
    init(oid: String, title: String, images: [UIImage]?, detail: String?, ads: [UIView]?, adsLink: [String]?, linkType: [String]?) {
        self.oid = oid
        self.title = title
        self.images = images
        self.detail = detail
        self.ads = ads
        self.adsLink = adsLink
        self.linkType = linkType
    }
    
    func fetchData() -> [News] {
        var news = [News]()
        
        return news
    }
}
