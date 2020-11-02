//
//  HTTPExtensions.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 16/08/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
    
    var status: HTTPStatusCode? {
        return HTTPStatusCode(rawValue: statusCode)
    }
    
}
