//
//  DetailHorseVC.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 31/05/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import UIKit

class DetailHorseVC: BaseVC {
    
    
    @IBOutlet weak var customButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
    }
    
    func updateUI() {
        let icon = UIImage(named: "sunrise")
        customButton.translatesAutoresizingMaskIntoConstraints = false
        customButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        customButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        customButton.layer.cornerRadius = 20
        customButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 50)
        customButton.tintColor = .white
        customButton.backgroundColor = .blue
        customButton.setTitle("Facebook", for: .normal)
        customButton.setImage(icon, for: .normal)
        
        
    }
    
       
    @IBAction func customButtonTapped(_ sender: UIButton) {
    }
    
}

