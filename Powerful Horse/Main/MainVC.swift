//
//  MainVC.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 30/05/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import UIKit

class MainVC: BaseVC {
    
    typealias lastName = (Bool) -> Void
    typealias firstName = (() -> Void)


    override func viewDidLoad() {
        super.viewDidLoad()
        setNameWith { [weak self] (result) in
            guard let self = self else {
                return
            }
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        goTo(segue: .goToDashboard)
    }
    
    
    internal func setNameWith(_:@escaping lastName) {
        
    }
    
    internal func setFirstNameWith(_:firstName) {
        
    }
}
