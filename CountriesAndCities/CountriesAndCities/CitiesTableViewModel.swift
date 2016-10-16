//
//  CitiesTableViewModel.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 15/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class CitiesTableViewModel: NSObject {

    var tableTitle:String
    
    fileprivate var view:TableViewControllerDelegate?
    
    fileprivate var cityData:[String]?
    
    init (view:TableViewControllerDelegate?, cities:[String]?, title:String) {
        self.view = view
        self.cityData = cities
        self.tableTitle = title
    }
}

extension CitiesTableViewModel : TableViewModel {
    
    func setView(delegate:TableViewControllerDelegate?) -> Void {
        self.view = delegate
    }
    
    func numberOfRows() -> Int {
        if let cityData = cityData {
            return cityData.count
        }
        return 0
    }
    
    func cellViewModel(forIndexPath indexPath:IndexPath) -> CellViewModel? {
        
        guard let cityData = cityData else {
            return nil
        }
        
        let row = indexPath.row
        if row < 0 || row >= cityData.count {
            return nil
        }
        
        let cellText = cityData[row]
        return TableViewCellViewModel(view:nil, cellText: cellText)
    }
    
    func viewModelForSelectedRow() -> TableViewModel? {
        return nil
    }
    
    func selectRow(atIndexPath indexPath:IndexPath) {
        
    }
    
    func viewDidAppear(_ animated: Bool) {
        guard let view = view else {
            return
        }
        view.setNavigationTitle(tableTitle)
    }
}
