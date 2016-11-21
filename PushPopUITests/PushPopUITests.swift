//
//  PushPopUITests.swift
//  PushPopUITests
//
//  Created by iOS Student on 11/21/16.
//  Copyright © 2016 PIRATE. All rights reserved.
//

import XCTest

class PushPopUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        app.buttons["Login"].tap()
        
        let element = app.otherElements.containing(.navigationBar, identifier:"Day la navigationBar").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        let textField = element.children(matching: .textField).element(boundBy: 0)
        textField.tap()
        textField.typeText("du")
        textField.typeText("y")
        let textField2 = element.children(matching: .textField).element(boundBy: 1)
        
        textField2.tap()
        textField2.typeText("123")
        app.buttons["LOGIN"].tap()
        
        let button = app.buttons["101"]
        button.tap()
        button.tap()
        button.tap()
        button.tap()
        button.tap()
        button.tap()
        
        
        let button2 = app.buttons["102"]
        button2.tap()
        button2.tap()
        button2.tap()
        button2.tap()
        button2.tap()
        button2.tap()
        button2.tap()
        button2.tap()
        button2.tap()

        let button3 = app.buttons["103"]
        button3.tap()
        button3.tap()
        button3.tap()
        button3.tap()
        button3.tap()
        button3.tap()
        button3.tap()
        button3.tap()
        button3.tap()
        button3.tap()

        
        
    }
    
}
