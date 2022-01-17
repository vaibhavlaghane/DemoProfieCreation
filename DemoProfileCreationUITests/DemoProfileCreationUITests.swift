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
        
    }

    func testSignInScreen(){
        let app = XCUIApplication()
        app.launch()
        sleep(1)
        let firstNameTextField = app.textFields["First Name"]
       // firstNameTextField.textFields.setValue(<#T##value: Any?##Any?#>, forKey: <#T##String#>)
        firstNameTextField.doubleTap()
        firstNameTextField.typeText("nameeeeeeee")
        XCTAssertNotNil(firstNameTextField)
        
        let emailAddressTextField = app.textFields["Email Address"]
        XCTAssertNotNil(emailAddressTextField)
        sleep(1)
        emailAddressTextField.doubleTap()
        sleep(1)
        emailAddressTextField.doubleTap()
        //emailAddressTextField.typeText("email")
        
        let passwordTextField = app.textFields["Password"]
        XCTAssertNotNil(passwordTextField)
        sleep(1)
        passwordTextField.doubleTap()
        sleep(1)
        passwordTextField.doubleTap()
        passwordTextField.typeText("password")
        
        let websiteTextField = app.textFields["Website"]
        XCTAssertNotNil(websiteTextField)
        sleep(1)
        websiteTextField.doubleTap()
        sleep(1)
        websiteTextField.doubleTap()
        websiteTextField.typeText("Website")
        
        let submitButton = app.buttons["Submit"]
        XCTAssertNotNil(submitButton)
         
        submitButton.tap()
        sleep(1)
        app.staticTexts["Hello, Firstname!"].tap()
         
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
