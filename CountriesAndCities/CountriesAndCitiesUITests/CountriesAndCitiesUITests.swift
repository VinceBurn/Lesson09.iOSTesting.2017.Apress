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
        
        continueAfterFailure = false
        XCUIApplication().launch()

        let device = XCUIDevice.shared()
        device.orientation = .portrait
    }
    
    override func tearDown() {
        super.tearDown()
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
    
    func testTappingOnCountryDisplaysDetailViewWithExpectedTitle() {
        
        let app = XCUIApplication()
        app.tables.staticTexts["United Kingdom"].tap()
        
        let label = app.navigationBars["United Kingdom"].staticTexts["United Kingdom"]
        let predicate = NSPredicate(format: "exists == 1", argumentArray: nil)
        
        self.expectation(for: predicate, evaluatedWith: label.exists, handler: nil)
        self.waitForExpectations(timeout: 5, handler: nil)
    }
}
