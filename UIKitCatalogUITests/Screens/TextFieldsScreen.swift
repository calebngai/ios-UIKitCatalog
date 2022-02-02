//
//  TextFieldsScreen.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 1/23/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import XCTest

class TextFieldsScreen {
    
    let app: XCUIApplication
    let DefaultField: XCUIElement
    let TintedField: XCUIElement
    let SecureField: XCUIElement
    let SpecificKeyboardField: XCUIElement
    let CustomField: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        DefaultField = app.textFields.element.firstMatch
        TintedField = app.textFields.element(boundBy: 1)
        SpecificKeyboardField = app.textFields.element(boundBy: 2)
        CustomField = app.textFields.element(boundBy: 3)
        SecureField = app.secureTextFields.element(boundBy: 0)
        }
    
    func typeInDefault(text:String)->Self{
        //sleep(2)
        XCTAssertTrue(DefaultField.waitForExistence(timeout: 5))
        DefaultField.tap()
        sleep(2)
        DefaultField.typeText(text)
        app.buttons["Done"].tap()
        return self
        
    }
    
    func typeInTinted(text:String)->Self{
        XCTAssertTrue(TintedField.waitForExistence(timeout: 5))
        TintedField.tap()
        sleep(2)
        TintedField.typeText(text)
        app.buttons["Done"].tap()
        return self
    }
    
    func typeInSecure(text: String)->Self{
        XCTAssertTrue(SecureField.waitForExistence(timeout: 5))
        SecureField.tap()
        sleep(3)
        SecureField.typeText(text)
        XCTAssertTrue(app.buttons["Done"].waitForExistence(timeout: 5))
        app.buttons["Done"].tap()
        return self
        }
    
    
    
}
