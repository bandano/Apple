//
//  rememberTests.swift
//  rememberTests
//
//  Created by apple on 14/12/2018.
//  Copyright © 2018 Samuel Alemayehu. All rights reserved.
//

import XCTest
@testable import remember

class rememberTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        //example test from coventry lecture slides
        var shoppingList = [String]()
        shoppingList.append("games")
        shoppingList.append("food")
        print("\(shoppingList)")
        for item in shoppingList {
            print("\(item)")
        }    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            
            
        }
    }

}
