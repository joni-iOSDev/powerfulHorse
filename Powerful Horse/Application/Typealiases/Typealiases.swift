//
//  Typealiases.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 16/08/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import Foundation

// MARK: - LISTENERS
public typealias InitRequest = ()->Void
public typealias FinishRequest = ()->Void
public typealias ErrorResponse = (PHErrors)->Void
public typealias FatalResponse = ()->Void
public typealias Response = (_ status: HTTPStatusCode, _ response: [String:Any])->Void
public typealias EnvelopeFinish = ()->Void
