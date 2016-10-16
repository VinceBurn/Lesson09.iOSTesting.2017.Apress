//
//  CountriesTableViewController.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 10/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    private var viewModel:TableViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = false
        self.viewModel = CountriesTableViewModel(view: self, title:"Select a country")
    }

    override func viewDidAppear(_ animated: Bool) {
        if let viewModel = viewModel {
            viewModel.viewDidAppear(animated)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else {
            return 0
        }
        
        return viewModel.numberOfRows()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath) as? CountriesTableViewCell
        
        guard let viewModel = viewModel,
               let countriesTableViewCell = cell else {
            return UITableViewCell()
        }
        
        let detailViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        countriesTableViewCell.viewModel = detailViewModel
        return countriesTableViewCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else {
            return
        }
        
        viewModel.selectRow(atIndexPath:indexPath)
        self.performSegue(withIdentifier: "cityListSegue", sender: nil)
    }
    
  
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let viewModel = viewModel else {
            return
        }
        
        if identifier.compare("cityListSegue") != .orderedSame {
            return
        }
        
        if let citiesTableViewController = segue.destination as? CitiesTableViewController {
            citiesTableViewController.viewModel = viewModel.viewModelForSelectedRow()
            citiesTableViewController.viewModel?.setView(delegate: citiesTableViewController)
        }

    }

}

extension CountriesTableViewController : TableViewControllerDelegate {
    func setNavigationTitle(_ title:String) -> Void {
        self.title = title
    }
}

