//
//  MainVC.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 30/05/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import UIKit

class MainVC: BaseVC {
    
    typealias LastName = (Bool) -> Void
    typealias FirstName = (() -> Void)

    override func viewDidLoad() {
        super.viewDidLoad()
        setNameWith {(_) in
            return
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        goTo(segue: .goToDashboard)
    }
    
    internal func setNameWith(_:@escaping LastName) {
        
    }
    
    internal func setFirstNameWith(_:FirstName) {
        
    }
}
