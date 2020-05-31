//
//  MainVC.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 30/05/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import UIKit

class MainVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        goTo(segue: .goToDashboard)

    }
    
    
    
    

}
