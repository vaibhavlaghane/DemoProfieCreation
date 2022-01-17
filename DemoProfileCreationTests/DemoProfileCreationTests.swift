//
//  DemoProfileCreationTests.swift
//  DemoProfileCreationTests
//
//  Created by Vaibhav Laghane on 1/15/22.
//

import XCTest
@testable import DemoProfileCreation

class DemoProfileCreationTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUserInfo() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let userInfo = UserInfo(name: "name", email: "email", website: "website", pswd: "pwd")
        XCTAssertEqual(userInfo.name, "name")
        XCTAssertEqual(userInfo.email, "email")
        XCTAssertEqual(userInfo.website, "website")
        XCTAssertEqual(userInfo.pswd, "pwd")
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
