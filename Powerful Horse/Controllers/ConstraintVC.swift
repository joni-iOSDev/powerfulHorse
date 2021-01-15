//
//  ConstraintVC.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 10/06/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import UIKit

class ConstraintVC: UIViewController {
    
    @IBOutlet weak var objcView: UIView!
    @IBOutlet weak var switchView: UISwitch!
    @IBOutlet weak var txtView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getMargin()
        // Do any additional setup after loading the view.
    }
    
    func getMargin() {
        let margins = view.layoutMarginsGuide
        objcView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 1).isActive = true
        objcView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        objcView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2.0).isActive = true
    }
}
