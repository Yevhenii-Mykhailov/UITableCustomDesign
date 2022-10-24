//
//  ViewControllerExtention.swift
//  UITableViewCustomDesign
//
//  Created by Yevhenii M on 23.10.2022.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        504
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = postsTableView.dequeueReusableCell(withIdentifier: "PostTableViewCell") as? PostTableViewCell {
            for post in posts {
//                cell.postImageName = post.postImageName
//                cell.avatarImage = post.avatarImage
//                cell.contenImage = post.contentImage
//                cell.likesCount = String(post.viewsCount)
//                cell.postDescription = post.description
//                cell.countOfComments = String(post.countOfComments)
//                cell.postedAt = String(post.postedAt)
                return cell
            }
        }
        
        return UITableViewCell()
    }
}
