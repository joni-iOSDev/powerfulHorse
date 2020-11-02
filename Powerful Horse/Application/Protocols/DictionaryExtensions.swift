//
//  DictionaryExtensions.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 16/08/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import Foundation

extension Dictionary {
    func merge(dic: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
        var mutableCopy = self
        
        for (key, value) in dic {
            mutableCopy[key] = value
        }
        
        return mutableCopy
    }
}
