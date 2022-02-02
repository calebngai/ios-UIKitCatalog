//
//  BDDTests.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 1/24/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import XCTest

class BDDTests:UIKitCatalogUITests {
    
    func testPractice1() {
        testTextFieldsScreen()
        
    }
    
    func testPractice2 () {
        testSlidersScreen(slider:2, sliderValue:0.7)
        testSlidersScreen(slider:3, sliderValue:0.2)
    }
    
    func testPractice3() {
        testAlertViewsScreen(secureText: "Secure Text", text: "Normal Text")
        testScroll(button: 17)
        
    }
    
    func testPractice4() {
        testPickerView(v1:"30", v2:"150", v3:"200")
        testActivityIndicatorScreen()
    }
    
    func testPractice5() {
        testButtonScreen()
        testEyesXCUIExample()
    }
}

