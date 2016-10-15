//
//  CountriesAndCitiesUITests.swift
//  CountriesAndCitiesUITests
//
//  Created by Abhishek Mishra on 09/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import XCTest

class CountriesAndCitiesUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        XCUIApplication().launch()

        let device = XCUIDevice.shared()
        device.orientation = .portrait
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTappingOnDeleteButtonDisplaysAlert() {
        
    }
    
    func testCountryListAppearsOnAppLaunch() {
        let navBarTitle = XCUIApplication().navigationBars["Select a country"].staticTexts["Select a country"]
        XCTAssert(navBarTitle.exists)
    }
    
    func testCountryListHasThreeItemsOnAppLaunch() {
        let countryTable = XCUIApplication().tables.element
        let rows = countryTable.staticTexts
        XCTAssertEqual(rows.count, 3)
    }
    
}
