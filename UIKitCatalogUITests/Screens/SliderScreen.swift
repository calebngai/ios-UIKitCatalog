//
//  SliderScreen.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 2/1/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import XCTest
import AutoMate

class SliderScreen {
    
    let app: XCUIApplication
    let defaultSlider: XCUIElement
    let otherSlider: XCUIElementQuery
    //let defaultSlider3: XCUIElement
    //let defaultSlider4: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        defaultSlider = app.sliders.element.firstMatch
        otherSlider = app.sliders
        //defaultSlider3 = app.sliders.element(boundBy: 2)
        //defaultSlider4 = app.sliders.element(boundBy: 3)
    }
    
    func adjustSliders(slider: Int, sliderValue: CGFloat) -> (slider:Int, sliderValue:CGFloat){
        if (app.sliders.element.waitForExistence(timeout: 5)){
        if (slider == 1) {
            defaultSlider.adjust(toNormalizedSliderPosition: sliderValue)
        }
        else {
            let sliderNumber = slider - 1
            otherSlider.element(boundBy: sliderNumber).adjust(toNormalizedSliderPosition: sliderValue)
                    
                }
        sleep(1)
        }
        return (slider, sliderValue)
    }
    
    
}
