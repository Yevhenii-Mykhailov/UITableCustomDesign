//
//  Post.swift
//  UITableViewCustomDesign
//
//  Created by Yevhenii M on 23.10.2022.
//

import Foundation
import UIKit

struct Post {
    var avatarImage: UIImage
    var postImageName: String
    var contentImage: UIImage
    var viewsCount: Int
    var description: String
    var countOfComments: Int
    var postedAt: Int
    
    init(avatarImage: UIImage, postImageName: String, contentImage: UIImage, viewsCount: Int, description: String, countOfComments: Int, postedAt: Int) {
        self.avatarImage = avatarImage
        self.postImageName = postImageName
        self.contentImage = contentImage
        self.viewsCount = viewsCount
        self.description = description
        self.countOfComments = countOfComments
        self.postedAt = postedAt
    }
}
