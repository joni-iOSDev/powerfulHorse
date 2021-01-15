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
    
    var name: DemoFinal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name = DemoFinal(name: "demo")
    }
    
     func goTo(segue: GoToVC) {
        self.performSegue(withIdentifier: segue.rawValue, sender: self)
    }
    
    enum GoToVC: String {
        case goToDashboard = "goToDashboard"
        case goToDetailHorse = "goToDetailHorse"
        case goToAutoScroll = "goToAutoScroll"
        case goToCallKit = "goToCallKit"
        case goToConstraint = "goToConstraint"

    }
}

final class DemoFinal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
