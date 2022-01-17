//
//  DemoProfileCreationUITests.swift
//  DemoProfileCreationUITests
//
//  Created by Vaibhav Laghane on 1/15/22.
//

import XCTest

class DemoProfileCreationUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        sleep(2)
        let firstNameTextField = app.textFields["First Name"]
        XCTAssertNotNil(firstNameTextField)
        let emailAddressTextField = app.textFields["Email Address"]
        XCTAssertNotNil(emailAddressTextField)
        let passwordTextField = app.textFields["Password"]
        XCTAssertNotNil(passwordTextField)
        
        let websiteTextField = app.textFields["Website"]
        XCTAssertNotNil(websiteTextField)
        
        let submitButton = app.buttons["Submit"]
        XCTAssertNotNil(submitButton)
         
        submitButton.tap()
        sleep(1)
        let alert = app.alerts[" Empty Name"].scrollViews.otherElements.buttons["Ok"]
        XCTAssertNotNil(alert)
        
        /*
        firstNameTextField.tap()
        
        let submitButton = app.buttons["Submit"]
        submitButton.tap()
        app.alerts[" Empty Name"].scrollViews.otherElements.buttons["Ok"].tap()
        
        let emailAddressTextField = app.textFields["Email Address"]
        emailAddressTextField.tap()
        
        let passwordTextField = app.textFields["Password"]
        passwordTextField.tap()
        
        let websiteTextField = app.textFields["Website"]
        websiteTextField.tap()
        firstNameTextField.tap()
        emailAddressTextField.tap()
        emailAddressTextField.tap()
        passwordTextField.tap()
        passwordTextField.tap()
        websiteTextField.tap()
        submitButton.tap()
        app.staticTexts["Hello, Firstname!"].tap()
        
        let element2 = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        let textView = element2.children(matching: .other).element(boundBy: 0).children(matching: .textView).element
        textView.tap()
        textView.tap()
        
        let element = element2.children(matching: .other).element(boundBy: 1)
        element.children(matching: .staticText).matching(identifier: "w").element(boundBy: 0).tap()
        element.children(matching: .staticText).matching(identifier: "w").element(boundBy: 1).tap()
        element.children(matching: .staticText).matching(identifier: "w").element(boundBy: 2).tap()
        app.buttons["Sign In"].tap()
        app.alerts[" Success"].scrollViews.otherElements.buttons["Ok"].tap()
        app.navigationBars["DemoProfileCreation.SignInSuccessView"].buttons["Back"].tap()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
 
 */
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
