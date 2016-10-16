//
//  CountriesTableViewViewModelTests.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 16/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import XCTest

class CountriesTableViewViewModelTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // MARK: - tests for - func numberOfRows() -> Int
    
    func testNumberOfRows_ReturnsExpectedValue() {

    }
    
    // MARK: - tests for - func cellViewModel(forIndexPath indexPath:IndexPath) -> CellViewModel?
    
    func testCellViewModel_IndexPathBelowBounds_ReturnsNil() {
        
    }
    
    func testCellViewModel_IndexPathAboveBounds_ReturnsNil() {
        
    }
    
    func testCellViewModel_ValidIndexPath_ReturnsCellViewModelWithCorrectTitle() {
        
    }

    func testCellViewModel_ValidIndexPath_ReturnsObjectOfExpectedType() {
        
    }
    
    // MARK: - tests for - func viewDidAppear(_ animated: Bool)
    
    func testViewDidAppear_NilView_DoesNotCallSetNavigationTitleOnView() {
        
    }
    
    func testViewDidAppear_ValidView_CallsSetNavigationTitleOnView() {
        
    }
    
    func testViewDidAppear_ValidView_CallsSetNavigationTitleWithExpectedTitleOnView() {
        
    }
    
    // MARK: - tests for - func viewModelForSelectedRow() -> TableViewModel?
    
    func testViewModelForSelectedRow_IndexPathBelowBounds_ReturnsNil() {
        
    }
    
    func testViewModelForSelectedRow_IndexPathAboveBounds_ReturnsNil() {
        
    }
    
    func testViewModelForSelectedRow_ValidIndexPath_ReturnsObjectOfExpectedType() {
        
    }
    
    func testViewModelForSelectedRow_ValidIndexPath_ReturnsCitiesTableViewModelWithExpectedTitle() {
        
    }
    
    func testViewModelForSelectedRow_ValidIndexPath_ReturnsCitiesTableViewModelWithCorrectNumberOfCities() {
        
    }
    
    // MARK: - tests for - func model(forIndexPath indexPath:IndexPath) -> AnyObject?
    func testModelForIndexPath_IndexPathBelowBounds_ReturnsNil() {
        
    }
    
    func testModelForIndexPath_IndexPathAboveBounds_ReturnsNil() {
        
    }
    
    func testModelForIndexPath_ValidIndexPath_ReturnsObjectOfCorrectType() {
        
    }
    
    func testModelForIndexPath_ZeroIndexPath_ReturnsCountryModelWithExpectedTitle() {
        
    }
    
    func testModelForIndexPath_ZeroIndexPath_ReturnsCountryModelWithExpectedCityList() {
        
    }
    
    func testModelForIndexPath_OneIndexPath_ReturnsCountryModelWithExpectedTitle() {
        
    }
    
    func testModelForIndexPath_OneIndexPath_ReturnsCountryModelWithExpectedCityList() {
        
    }

}
