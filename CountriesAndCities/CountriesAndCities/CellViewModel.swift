//
//  CellViewModel.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 15/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import Foundation

protocol CellViewModel {
    var cellText:String {get set}
    func setView(delegate:TableViewCellDelegate?) -> Void
}
