//
//  ButtonsScreen.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 2/2/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import XCTest

class ButtonsScreen {
    
    let app: XCUIApplication
        let systemTextButton: XCUIElement
        let systemContactAddButton: XCUIElement
        let systemDetailDisclosureButton: XCUIElement
        let imageButton: XCUIElement
        let attributedTextButton: XCUIElement
        let symbolButton: XCUIElement
        let symbolTextButton: XCUIElement
    
    
    init (app: XCUIApplication){
        self.app = app
        systemTextButton = app.buttons["systemText_button"]
        systemContactAddButton = app.buttons["systemText_button"]
        systemDetailDisclosureButton = app.buttons["systemText_button"]
        imageButton = app.buttons["systemText_button"]
        attributedTextButton = app.buttons["systemText_button"]
        symbolButton = app.buttons["systemText_button"]
        symbolTextButton = app.buttons["systemText_button"]
    }
    
    func tapAllButtons() {
        systemTextButton.tap()
        systemContactAddButton.tap()
        systemDetailDisclosureButton.tap()
        imageButton.tap()
        attributedTextButton.tap()
        symbolButton.tap()
        symbolTextButton.tap()
        
    }
}
