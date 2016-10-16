//
//  CitiesTableViewController.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 10/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class CitiesTableViewController: UITableViewController {

    var viewModel:TableViewModel?
    
    var selectedCountry:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedCountry
        self.clearsSelectionOnViewWillAppear = false
    }

    override func viewDidAppear(_ animated: Bool) {
        if let viewModel = viewModel {
            viewModel.viewDidAppear(animated)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let viewModel = viewModel {
            return viewModel.numberOfRows()
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath) as? CitiesTableViewCell

        guard let viewModel = viewModel,
            let citiesTableViewCell = cell else {
                return UITableViewCell()
        }
        
        citiesTableViewCell.viewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        return citiesTableViewCell
        
    }
   
}

extension CitiesTableViewController : TableViewControllerDelegate {
    func setNavigationTitle(_ title:String) -> Void {
        self.title = title
    }
}
