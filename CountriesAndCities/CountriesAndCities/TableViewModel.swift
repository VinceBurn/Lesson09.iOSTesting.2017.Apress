//
//  TableViewModel.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 15/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import Foundation

protocol TableViewModel {
    
    var tableTitle:String {get set}
    
    func setView(delegate:TableViewControllerDelegate?) -> Void
    
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath:IndexPath) -> CellViewModel?
    
    func viewModelForSelectedRow() -> TableViewModel?
    func selectRow(atIndexPath indexPath:IndexPath)
    
    func viewDidAppear(_ animated: Bool)
    
    func model(forIndexPath indexPath:IndexPath) -> AnyObject?
}
