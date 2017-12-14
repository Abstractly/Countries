//
//  ViewController.swift
//  123
//
//  Created by Khaled Habbal on 2017-12-13.
//  Copyright © 2017 Khaled Habbal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var countriesFetched: [Country] = []
    
    @IBOutlet weak var tableViews: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchData()
    }
    
    func fetchData() {
        let JSONString = "https://restcountries.eu/rest/v2/all"
        guard let url = URL(string: JSONString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            do {
                let countries = try JSONDecoder().decode([Country].self, from: data)
                self.countriesFetched = countries
                
                DispatchQueue.main.async {
                    self.tableViews.reloadData()
                }
                
            } catch let jsonErr {
                print("JSON ERROR", jsonErr)
            }
            
            }.resume()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countriesFetched.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "allah", for: indexPath) as! CountryTableViewCell
        
        tableViewCell.countryLabel.text = countriesFetched[indexPath.row].name
        tableViewCell.capitalLabel.text = countriesFetched[indexPath.row].capital
        tableViewCell.regionLabel.text = countriesFetched[indexPath.row].region
        
        return tableViewCell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailView" {
            let svc = segue.destination as! DetailViewController
            svc.myTitle = countriesFetched[(tableViews.indexPathForSelectedRow?.row)!].name
        }
    }
}
