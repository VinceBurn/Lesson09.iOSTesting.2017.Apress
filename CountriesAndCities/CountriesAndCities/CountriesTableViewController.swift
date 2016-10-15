//
//  CountriesTableViewController.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 10/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    private var countryList = ["United Kingdom", "United States of America", "Germany"]
    private var selectedCountry:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        cell.textLabel?.text = countryList[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCountry = countryList[indexPath.row]
        self.performSegue(withIdentifier: "cityListSegue", sender: nil)
    }
    
  
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        
        if identifier.compare("cityListSegue") != .orderedSame {
            return
        }
        
        if let destination = segue.destination as? CitiesTableViewController,
           let selectedCountry = selectedCountry {
            destination.selectedCountry = selectedCountry
        }

    }

}
