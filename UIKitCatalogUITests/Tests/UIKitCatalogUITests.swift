//
//  UIKitCatalogUITests.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 1/23/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import XCTest
import AutoMate
import EyesXCUI

class UIKitCatalogUITests: UIKitCatalogBase {
    
    
    
    func testTextFieldsScreen() {
        
        let utility = Utility(app: app)
        let homeScreen = HomeScreen (app: app)
        homeScreen.TextFields.tap()
        
        let textFieldsScreen = TextFieldsScreen (app:app)
        textFieldsScreen.typeInDefault(text: "Default")
                        .typeInSecure(text: "This is Secure")
                        .typeInTinted(text: "This is Tinted")
        XCTAssertTrue(app.textFields["Default"].exists)
        XCTAssertTrue(app.textFields["This is Secure"].exists)
        XCTAssertTrue(app.textFields["This is Tinted"].exists)
        utility.UIKitCatalogBtn.tap()
        XCTAssertTrue(homeScreen.TextFields.exists)
        sleep(1)
                
        }
    
    func testPickerView(v1:String, v2:String, v3:String){
        
        let utility = Utility(app:app)
        let pickerViewScreen = PickerViewerScreen(app: app)
        let homeScreen = HomeScreen (app: app)
        homeScreen.PickerView.tap()
        
        pickerViewScreen.selectPickerWheelValues(value1: v1, value2: v2, value3: v3)
        XCTAssertEqual(pickerViewScreen.PickerWheel1.value as! String, v1)
        XCTAssertEqual(pickerViewScreen.PickerWheel2.value as! String, v2)
        XCTAssertEqual(pickerViewScreen.PickerWheel3.value as! String, v3)
        utility.UIKitCatalogBtn.tap()
        XCTAssertTrue(homeScreen.PickerView.exists)
        sleep(1)
        }
    
    func testAlertViewsScreen(secureText:String, text:String) {
        
        let utility = Utility(app: app)
        let homeScreen = HomeScreen(app: app)
        let alertViewsScreen = AlertViewsScreen(app: app)
        
        homeScreen.AlertViews.tap()
        alertViewsScreen.selectTextEntryAndType(text: text)
        alertViewsScreen.selectSecureTextEntryAndType(text: secureText)
        alertViewsScreen.selectSecureTextEntryAndCancel()
        alertViewsScreen.selectConfirmCancelAndConfirm()
        utility.UIKitCatalogBtn.tap()
        sleep(1)
        }
    
    func testScroll(button:Int) {
       // let scroll = app.scrollViews.element
        let utility = Utility(app: app)
        let webViewBtn = app.buttons.element(boundBy: button)
        let activityIndicatorBtn = app.buttons.element.firstMatch
        
        app.swipe(to: webViewBtn)
        webViewBtn.tap()
        sleep(1)
        utility.UIKitCatalogBtn.tap()
        
        app.swipe(to: activityIndicatorBtn)
        sleep(1)
    }
    
    func testActivityIndicatorScreen() {
        let utility = Utility(app: app)
        let homeScreen = HomeScreen(app: app)
        
        homeScreen.ActivityIndicators.tap()
        
        let activityIndicator1 = app.activityIndicators.element.firstMatch
        let activityIndicator2 = app.activityIndicators.element(boundBy: 1)
        let activityIndicator3 = app.activityIndicators.element(boundBy: 2)
        let activityIndicator4 = app.activityIndicators.element(boundBy: 3)
        XCTAssertTrue(activityIndicator1.exists)
        XCTAssertTrue(activityIndicator2.exists)
        XCTAssertTrue(activityIndicator3.exists)
        XCTAssertTrue(activityIndicator4.exists)
        utility.UIKitCatalogBtn.tap()
        sleep(1)
    }
    
    func testSlidersScreen(slider:Int, sliderValue:CGFloat) {
        let utility = Utility(app: app)
        let homeScreen = HomeScreen(app: app)
        let sliderScreen = SliderScreen(app: app)
        sleep(1)
        homeScreen.Sliders.tap()
        
        //warning because func is returning tuple but is not used
        sliderScreen.adjustSliders(slider:slider, sliderValue:sliderValue)
        XCTAssertTrue(sliderScreen.defaultSlider.exists)
        XCTAssertTrue(sliderScreen.otherSlider.element(boundBy: 1).exists)
        XCTAssertTrue(sliderScreen.otherSlider.element(boundBy: 2).exists)
        XCTAssertTrue(sliderScreen.otherSlider.element(boundBy: 3).exists)
        print(slider,sliderValue,separator:", ", terminator: "")
        utility.UIKitCatalogBtn.tap()
    }
    
    func testButtonScreen()  {
        let utility = Utility(app: app)
        let homeScreen = HomeScreen(app: app)
        homeScreen.Buttons.tap()
        
        let buttonScreen = ButtonsScreen(app: app)
        buttonScreen.tapAllButtons()
        utility.UIKitCatalogBtn.tap()
    }
    
    func testEyesXCUIExample() {
            // Start the test.
            eyes.open(withApplicationName: "UIKitCatalog", testName: "My first test using EyesXCUI SDK!")

            // Visual checkpoint #1.
            eyes.check(withTag: "UIKitCatalog", andSettings: Target.window().timeout(inSeconds: 5))

            // Click the "Click me!" button.
            XCUIApplication().staticTexts["Buttons"].tap()
            sleep(2)
            // Visual checkpoint #2.
            eyes.checkWindow(withTag: "Buttons Screen")
           

            // End the test.
            do {
                try eyes.close()
            } catch {
                eyes.abortIfNotClosed()
            }
        }
        
       
    

    
}

