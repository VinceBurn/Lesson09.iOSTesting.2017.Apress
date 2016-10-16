//
//  CountryModel.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 15/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class CountryModel: NSObject {
    var countryName:String
    var cities:[String]
    
    init(countryName:String, cities:[String]) {
        self.countryName = countryName
        self.cities = cities
        super.init()
    }
}
