//
//  PostTableViewCell.swift
//  UITableViewCustomDesign
//
//  Created by Yevhenii M on 23.10.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userNameLable: UILabel!
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


//    @IBOutlet weak var postImageNameLable: UILabel!
//    @IBOutlet weak var userImageView: UIImageView!
//    @IBOutlet weak var contentImageView: UIImageView!
//    @IBOutlet weak var likesCountLable: UILabel!
//    @IBOutlet weak var postDescriptionLable: UILabel!
//    @IBOutlet weak var countOfCommentsLable: UILabel!
//    @IBOutlet weak var postedAtLable: UILabel!
//
//    var postImageName = ""
//    var avatarImage = UIImage()
//    var contenImage = UIImage()
//    var likesCount = ""
//    var postDescription = ""
//    var countOfComments = ""
//    var postedAt = ""



//        postImageNameLable.text = postImageName
//        userImageView.image = avatarImage
//        contentImageView.image = contenImage
//        likesCountLable.text = likesCount
//        postDescriptionLable.text = postDescription
//        countOfCommentsLable.text = countOfComments
//        postedAtLable.text = postedAt
