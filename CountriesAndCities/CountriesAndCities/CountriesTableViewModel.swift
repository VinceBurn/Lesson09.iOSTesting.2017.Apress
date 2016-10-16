//
//  CountriesTableViewModel.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 15/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class CountriesTableViewModel: NSObject {
    
    var tableTitle:String
    
    fileprivate var countryData:[CountryModel]
    fileprivate var selectedIndexPath:IndexPath?
    fileprivate var view:TableViewControllerDelegate?
    
    init (view:TableViewControllerDelegate?, title:String){
        self.view = view
        self.tableTitle = title
        
        let ukModel = CountryModel(countryName: "United Kingdom", cities: ["London", "Milton Keynes", "Birmingham", "Manchester"])
        let usModel = CountryModel(countryName: "United States of America", cities: ["New York", "Chicago", "Detroit"])
        let germanModel = CountryModel(countryName: "Germany", cities: ["Berlin", "Munich", "Frankfurt", "Dresden"])
        self.countryData = [ukModel, usModel, germanModel]
    }
}

extension CountriesTableViewModel : TableViewModel {

    func setView(delegate:TableViewControllerDelegate?) -> Void {
        self.view = delegate
    }
    
    func numberOfRows() -> Int {
        return countryData.count
    }
    
    func cellViewModel(forIndexPath indexPath:IndexPath) -> CellViewModel? {
        let row = indexPath.row
        if row < 0 || row >= self.countryData.count {
            return nil
        }
        
        let cellText = countryData[row].countryName
        return TableViewCellViewModel(view:nil, cellText: cellText)
    }
    
    func selectRow(atIndexPath indexPath:IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
    func viewModelForSelectedRow() -> TableViewModel? {
        guard let selectedIndexPath = selectedIndexPath else {
            return nil
        }
        
        if selectedIndexPath.row < 0 || selectedIndexPath.row >= countryData.count {
            return nil
        }
        
        let cityArray = countryData[selectedIndexPath.row].cities
        let selectedCountry = countryData[selectedIndexPath.row].countryName
        return CitiesTableViewModel(view:nil, cities:cityArray, title:selectedCountry)
    }
    
    func viewDidAppear(_ animated: Bool) {
        guard let view = view else {
            return
        }
        view.setNavigationTitle(tableTitle)
    }
    
    func model(forIndexPath indexPath:IndexPath) -> AnyObject? {
        let row = indexPath.row
        if row < 0 || row >= self.countryData.count {
            return nil
        }
        
        return countryData[row] as AnyObject
    }
    
}
