//
//  ViewController.swift
//  UITableViewCustomDesign
//
//  Created by Yevhenii M on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var postsTableView: UITableView!
    let posts = createPosts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postsTableView.dataSource = self
        postsTableView.delegate = self
        
        self.registerTableViewCells()
    }
    
    private func registerTableViewCells() {
        let authorNameLable = UINib(nibName: "PostTableViewCell",bundle: nil)
        self.postsTableView.register(authorNameLable, forCellReuseIdentifier: "PostTableViewCell")
    }
}

func createPosts() -> [Post] {
    var arrayOfPosts: [Post] = []
    
    let firstUserAvatar = UIImage(named: "user1")!
    let secondUserAvatar = UIImage(named: "user2")!
    let thirdUserAvatar = UIImage(named: "user3")!
    
    let firstContentImage = UIImage(named: "dog1")!
    let secondContentImage = UIImage(named: "dog2")!
    let thirdContentImage = UIImage(named: "dog3")!
    
    let firstPost = Post(avatarImage: firstUserAvatar,
                         postImageName: "dog1_wof",
                         contentImage: firstContentImage,
                         viewsCount: 553,
                         description: """
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        """,
                         countOfComments: 54,
                         postedAt: 4)
    
    let secondPost = Post(avatarImage: secondUserAvatar,
                          postImageName: "dog2_wof",
                          contentImage: secondContentImage,
                          viewsCount: 553,
                          description: """
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        """,
                          countOfComments: 54,
                          postedAt: 4)
    
    let thirdPost = Post(avatarImage: thirdUserAvatar,
                         postImageName: "dog3_wof",
                         contentImage: thirdContentImage,
                         viewsCount: 553,
                         description: """
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        """,
                         countOfComments: 54,
                         postedAt: 4)
    
    arrayOfPosts.append(firstPost)
    arrayOfPosts.append(secondPost)
    arrayOfPosts.append(thirdPost)
    
    return arrayOfPosts
}
