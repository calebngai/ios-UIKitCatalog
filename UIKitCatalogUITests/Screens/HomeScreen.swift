//
//  HomeScreen.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 1/23/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import XCTest

class HomeScreen {
    
    let app: XCUIApplication
    let ActivityIndicators: XCUIElement
    let TextFields: XCUIElement
    let TextView: XCUIElement
    let PickerView: XCUIElement
    let AlertViews: XCUIElement
    let WebView: XCUIElement
    let Sliders:XCUIElement
    let Buttons: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        ActivityIndicators = app.staticTexts["Activity Indicators"]
        TextFields = app.staticTexts["Text Fields"]
        TextView = app.staticTexts["Text View"]
        PickerView = app.staticTexts["Picker View"]
        AlertViews = app.staticTexts["Alert Views"]
        WebView = app.staticTexts["Web View"]
        Sliders = app.staticTexts["Sliders"]
        Buttons = app.staticTexts["Buttons"]
        }
    
    
    
}
