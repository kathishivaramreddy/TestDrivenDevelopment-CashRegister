//
//  TDD1Tests.swift
//  TDD1Tests
//
//  Created by Shiva Ram Reddy on 21/08/20.
//  Copyright © 2020 Shiva Ram Reddy. All rights reserved.
//

import XCTest
@testable import TDD1

class CashRegisterTests: XCTestCase {
    
    var availableFund: Int!
    var sut: CashRegister!
    
    override func setUp() {
        
        super.setUp()
        availableFund = 100
        sut = CashRegister(availableFund: availableFund)
    }

    override func tearDown() {
       
        availableFund = nil
        sut = nil
        super.tearDown()
    }

    func testInitCreatesCashRegister() {
        
        XCTAssertNotNil(CashRegister())
    }
    
    func testInitCreatesFundsAvailableFunds() {
        
        XCTAssertEqual(sut.availableFund, availableFund)
    }
    
    func testAddItemAddItemCostToTotalTransaction() {
        
        let itemCost = 40
        sut.addItem(itemCost)
        
        XCTAssertEqual(sut.totalTransaction, itemCost)
    }
    
    func testAddItemWhenTwoItemsAreAdded() {
        
        let item1Cost = 40
        let item2Cost = 60
        
        let expectedTotalCost = 100
        sut.addItem(item1Cost)
        sut.addItem(item2Cost)
        
        XCTAssertEqual(sut.totalTransaction, expectedTotalCost)
    }
    
    func testAcceptPaymentSubtractsPaymentFromTotalTransaction() {
        
        sut.addItem(100)
        let totalTransaction = sut.totalTransaction
        
        let payment = 100
    
        sut.acceptPayment(payment)
     
        let difference = totalTransaction - payment
       
        XCTAssertEqual(sut.totalTransaction, difference)
    }
    
    func testAcceptPaymentAddPaymentToAvailableFund() {
                
        sut.addItem(100)
        
        let payment = 100
        
        sut.acceptPayment(payment)
        
        XCTAssertEqual(sut.availableFund, 200)
    }
}
