//
//  AlertViewsScreen.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 1/24/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import XCTest

class AlertViewsScreen {
    
    let app: XCUIApplication
    let Simple: XCUIElement
    let OkayCancel: XCUIElement
    let Other: XCUIElement
    let TextEntry: XCUIElement
    let SecureTextEntry: XCUIElement
    let ConfirmCancel: XCUIElement
    let Destructive: XCUIElement
    let TextEntryField: XCUIElement
    let SecureTextEntryField: XCUIElement
    let Ok: XCUIElement
    let Confirm: XCUIElement
    let Cancel: XCUIElement
    
    
    init(app: XCUIApplication) {
        self.app = app
        Simple = app.staticTexts["Simple"]
        OkayCancel = app.staticTexts["Okay / Cancel"]
        Other = app.staticTexts["Other"]
        TextEntry = app.staticTexts["Text Entry"]
        SecureTextEntry = app.staticTexts["Secure Text Entry"]
        ConfirmCancel = app.staticTexts["Confirm / Cancel"]
        Destructive = app.staticTexts["Destructive"]
        Ok = app.buttons["OK"]
        Confirm = app.buttons["Confirm"]
        Cancel = app.buttons["Cancel"]
        TextEntryField = app.textFields.element(boundBy: 0)
        SecureTextEntryField = app.secureTextFields.element(boundBy: 0)
        
        }
    
    func selectTextEntryAndType(text:String) {
        XCTAssertTrue(TextEntry.waitForExistence(timeout: 5))
        TextEntry.tap()
        XCTAssertTrue(TextEntryField.waitForExistence(timeout: 5))
        TextEntryField.tap()
        TextEntryField.typeText(text)
        Ok.tap()
    }
    
    func selectSecureTextEntryAndType(text:String) {
        XCTAssertTrue(SecureTextEntry.waitForExistence(timeout: 5))
        SecureTextEntry.tap()
        XCTAssertTrue(SecureTextEntry.waitForExistence(timeout: 5))
        TextEntryField.tap()
        SecureTextEntryField.typeText(text)
        sleep(3)
        Ok.tap()
    }
    
    func selectSecureTextEntryAndCancel() {
        XCTAssertTrue(SecureTextEntry.waitForExistence(timeout: 5))
        SecureTextEntry.tap()
        XCTAssertTrue(Cancel.waitForExistence(timeout: 5))
        Cancel.tap()
    }
    
    func selectConfirmCancelAndConfirm() {
        sleep(1)
        ConfirmCancel.tap()
        sleep(1)
        Confirm.tap()
    }
    
}
