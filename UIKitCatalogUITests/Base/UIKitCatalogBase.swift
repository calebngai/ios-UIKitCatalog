//
//  UIKitCatalogBase.swift
//  UIKitCatalogUITests
//
//  Created by Caleb Ngai on 1/23/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI

class UIKitCatalogBase: XCTestCase {
    
    let app = XCUIApplication()
    let eyes = Eyes()
    
    
    let defaultLaunchArguments: [[String]] = {
        let launchArguments: [[String]] = [["-StartFromCleanState", "YES"]]
        return launchArguments
    }()
    
    func launchApp(with launchArguments: [[String]] = []) {
        (defaultLaunchArguments + launchArguments).forEach { app.launchArguments += $0 }
        app.launch()
    }
    
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        launchApp(with: defaultLaunchArguments)
        eyes.apiKey = "B0gcHkhjctWM68yvHr8DuexKG6Xox1fHTzftlkmAoPU110"
       
    }

    override func tearDownWithError() throws {
        
        super.tearDown()
        app.terminate()
        
        // End the test.
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }

  

    /*func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }*/
}
