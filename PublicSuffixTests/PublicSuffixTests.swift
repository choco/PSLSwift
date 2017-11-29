//
//  PublicSuffixTests.swift
//  PublicSuffixTests
//
//  Created by Enrico Ghirardi on 28/11/2017.
//  Copyright © 2017 Enrico Ghirardi. All rights reserved.
//

import XCTest
@testable import PublicSuffix

class PublicSuffixTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPSLDownload() {
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let exp = self.expectation(description: "Test list")
        URL.updatePSL(success: { exp.fulfill() }, failed: { XCTFail("Unable to update PSL") })
        waitForExpectations(timeout: 10, handler: nil)
    }
    
    func testDomains() {
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(URL(string:"https://netflix.com")?.registeredDomain! == "netflix.com")
        XCTAssert(URL(string:"https://www.netflix.com")?.registeredDomain! == "netflix.com")
        XCTAssert(URL(string:"https://test.co.uk")?.registeredDomain! == "test.co.uk")
        XCTAssert(URL(string:"https://www.test.co.uk")?.registeredDomain! == "test.co.uk")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
