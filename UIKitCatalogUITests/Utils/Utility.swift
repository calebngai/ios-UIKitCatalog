//
//  Utility.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 1/23/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import XCTest

class Utility {
    
    let app: XCUIApplication
    let UIKitCatalogBtn: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        UIKitCatalogBtn = app.buttons["UIKitCatalog"]
    }
}
