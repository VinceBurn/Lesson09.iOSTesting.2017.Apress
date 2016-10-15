//
//  CitiesTableViewController.swift
//  CountriesAndCities
//
//  Created by Abhishek Mishra on 10/10/2016.
//  Copyright © 2016 ASM Technology Ltd. All rights reserved.
//

import UIKit

class CitiesTableViewController: UITableViewController {

    var dict = ["Key":"Value"]
    
    private var cityDictionary = ["United Kingdom" : ["London", "Milton Keynes", "Birmingham", "Manchester"],
                                  "United States of America" : ["New York", "Chicago", "Detroit"],
                                  "Germany" : ["Berlin", "Munich", "Frankfurt", "Dresden"]]
    
    var selectedCountry:String!
    
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
        if let cityArray = cityDictionary[selectedCountry] {
            return cityArray.count
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath)

        if let cityArray = cityDictionary[selectedCountry] {
            cell.textLabel?.text = cityArray[indexPath.row]
        }

        return cell
    }
   
}
