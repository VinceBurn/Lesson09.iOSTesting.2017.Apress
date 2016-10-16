//
//  TableViewCellViewModel.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 15/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class TableViewCellViewModel: NSObject, CellViewModel {
    
    var cellText:String
    private var view:TableViewCellDelegate?
    
    init(view:TableViewCellDelegate?, cellText:String) {
        self.cellText = cellText
        super.init()
    }
    
    override init() {
        cellText = ""
        super.init()
    }
    
    func setView(delegate:TableViewCellDelegate?) -> Void {
        view = delegate
    }
}
