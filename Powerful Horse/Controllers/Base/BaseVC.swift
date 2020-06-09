//
//  BaseVC.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 31/05/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class BaseVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
    }
    
     func goTo(segue: goToVC) {
        self.performSegue(withIdentifier: segue.rawValue, sender: self)
    }
    
    enum goToVC: String {
        case goToDashboard = "goToDashboard"
        case goToDetailHorse = "goToDetailHorse"
        case goToAutoScroll = "goToAutoScroll"
        case goToCallKit = "goToCallKit"
    }
}
