//
//  HeroPresenter.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 11/11/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import Foundation

protocol HeroView: class {
    func showMessage()
}

protocol HeroPresenter {
    var numberHeros: Int { get }
}

class HeroPresenterImplementation: HeroPresenter {
    var numberHeros: Int = 0
    
}
