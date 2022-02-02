//
//  DatePickerScreen.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 1/23/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import XCTest

class PickerViewerScreen {
    
    let app: XCUIApplication
    let PickerWheel1: XCUIElement
    let PickerWheel2: XCUIElement
    let PickerWheel3: XCUIElement
    
    
    init(app: XCUIApplication) {
        self.app = app
        PickerWheel1 = app.pickerWheels.element(boundBy: 0)
        PickerWheel2 = app.pickerWheels.element(boundBy: 1)
        PickerWheel3 = app.pickerWheels.element(boundBy: 2)
        
        }
    
    func selectPickerWheelValues(value1:String, value2:String, value3:String){
        if (app.pickerWheels.element.waitForExistence(timeout: 5)) {
        PickerWheel1.adjust(toPickerWheelValue: value1)
        PickerWheel2.adjust(toPickerWheelValue: value2)
        PickerWheel3.adjust(toPickerWheelValue: value3)
        sleep(2)
        }
    
        }
    
}
