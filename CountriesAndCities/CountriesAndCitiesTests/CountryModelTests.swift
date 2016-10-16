//
//  CountryModelTests.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 16/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import XCTest

class CountryModelTests: XCTestCase {
    
    let expectedCountryName = "ABCD"
    let expectedCity1 = "DUMMY CITY 1"
    let expectedCity2 = "DUMMY CITY 2"
 
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_ValidCountryName_SetsCountryName() {
        let expectedArrayOfCities = [expectedCity1, expectedCity2]
        let countryModel = CountryModel(countryName: expectedCountryName, cities: expectedArrayOfCities)
        XCTAssertEqual(countryModel.countryName, expectedCountryName)
    }
    
    func testInit_ValidArrayOfCities_SetsCities() {
        let expectedArrayOfCities = [expectedCity1, expectedCity2]
        let countryModel = CountryModel(countryName: expectedCountryName, cities: expectedArrayOfCities)
        XCTAssertEqual(countryModel.cities, expectedArrayOfCities)
    }
    
    func testInit_ValidArrayOfCities_SetsCitiesWithCorrectCount() {
        let expectedArrayOfCities = [expectedCity1, expectedCity2]
        let countryModel = CountryModel(countryName: expectedCountryName, cities: expectedArrayOfCities)
        XCTAssertEqual(countryModel.cities.count, expectedArrayOfCities.count)
    }
}
