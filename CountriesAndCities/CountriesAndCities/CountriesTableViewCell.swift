//
//  CountriesTableViewCell.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 15/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class CountriesTableViewCell: UITableViewCell {

    var viewModel:CellViewModel? {
        willSet(newViewModel) {
            guard let vm = newViewModel else {
                self.textLabel?.text = ""
                return
            }
            self.textLabel?.text = vm.cellText
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension CountriesTableViewCell : TableViewCellDelegate {
    
}
