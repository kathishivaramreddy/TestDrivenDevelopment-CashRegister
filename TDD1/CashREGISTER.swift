//
//  CashREGISTER.swift
//  TDD1
//
//  Created by Shiva Ram Reddy on 21/08/20.
//  Copyright © 2020 Shiva Ram Reddy. All rights reserved.
//

import Foundation

class CashRegister {
    
    var availableFund: Int
    
    var totalTransaction: Int = 0
    
    init(availableFund: Int = 0) {
        
        self.availableFund = availableFund
    }
    
    func addItem(_ cost: Int) {
        
        self.totalTransaction += cost
    }
    
    func acceptPayment(_ payment: Int) {
        
        self.totalTransaction -= payment
        self.availableFund += payment
    }
}
