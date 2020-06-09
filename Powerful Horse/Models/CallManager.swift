//
//  CallManager.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 02/06/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import Foundation

class CallManager {
    
    var callsChangedHandler: (() -> Void)?
    private(set) var calls: [Call] = []
    
    func callWithUUID(uuid: UUID) -> Call? {
        guard let index = self.calls.firstIndex(where: {$0.uuid == uuid}) else {
            return nil
        }
        return calls[index]
    }
    
    func add(call: Call) {
        calls.append(call)
        call.stateChanged = { [weak self] in
            guard let self = self else { return }
            self.callsChangedHandler?()
        }
        callsChangedHandler?()
    }
    
    func remove(call: Call) {
        guard let index = calls.firstIndex(where: { $0 === call }) else { return }
        calls.remove(at: index)
        callsChangedHandler?()
    }
    
    func removeAllCalls() {
        calls.removeAll()
        callsChangedHandler?()
    }
}

