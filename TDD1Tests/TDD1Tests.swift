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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitCreatesCashRegister() {
        
        XCTAssertNotNil(CashRegister())
    }
}
