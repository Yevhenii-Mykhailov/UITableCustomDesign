//
//  StringExtension.swift
//  UITableViewCustomDesign
//
//  Created by Yevhenii M on 24.10.2022.
//

import Foundation
import UIKit

extension String {
    func makeBold(size: CGFloat) -> String {
        let attributes = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: size)]
        
        let attributedString = NSAttributedString(string: self, attributes: attributes)
        return attributedString.string
    }
}


