//
//  StringExtension.swift
//  UITableViewCustomDesign
//
//  Created by Yevhenii M on 24.10.2022.
//

import Foundation
import UIKit

extension String {
    
    func makeBoldWord(boldWord: String) -> NSMutableAttributedString {
        let boldText = boldWord
        let attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)]
        let attributedString = NSMutableAttributedString(string:boldText, attributes:attrs)

        let normalText = self
        let normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        return attributedString
    }
}



