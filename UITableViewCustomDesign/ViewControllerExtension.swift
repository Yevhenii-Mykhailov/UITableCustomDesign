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
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = postsTableView.dequeueReusableCell(withIdentifier: "PostTableViewCell") as? PostTableViewCell {
            cell.postImageName = posts[indexPath.row].postImageName
            cell.avatarImage = posts[indexPath.row].avatarImage
            cell.contenImage = posts[indexPath.row].contentImage
            cell.likesCount = String(posts[indexPath.row].viewsCount)
            cell.postDescription = posts[indexPath.row].description
            cell.countOfComments = String(posts[indexPath.row].countOfComments)
            cell.postedAt = String(posts[indexPath.row].postedAt)
            return cell
        }
        
        return UITableViewCell()
    }
}
