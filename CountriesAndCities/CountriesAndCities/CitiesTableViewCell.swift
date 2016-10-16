//
//  CitiesTableViewCell.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 15/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class CitiesTableViewCell: UITableViewCell {

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
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension CitiesTableViewCell : TableViewCellDelegate {
    
}
