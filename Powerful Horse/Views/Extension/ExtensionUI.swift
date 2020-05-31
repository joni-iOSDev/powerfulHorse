//
//  ExtensionUI.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 31/05/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
   func setInsets(
       forContentPadding contentPadding: UIEdgeInsets,
       imageTitlePadding: CGFloat
   ) {
       self.contentEdgeInsets = UIEdgeInsets(
           top: contentPadding.top,
           left: contentPadding.left,
           bottom: contentPadding.bottom,
           right: contentPadding.right + imageTitlePadding
       )
       self.titleEdgeInsets = UIEdgeInsets(
           top: 0,
           left: imageTitlePadding,
           bottom: 0,
           right: -imageTitlePadding
       )
   }
}
extension UIColor {
    class func colorCompany(_ nameCompany: company) -> UIColor {
        switch nameCompany {
        case .Facebook:
            return UIColor(named: "facebookColor")!
        case .Google:
            ()
        }
        return .black
    }
    
}

enum company {
    case Facebook
    case Google
}


