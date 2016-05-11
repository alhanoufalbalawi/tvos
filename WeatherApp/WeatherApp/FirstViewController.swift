//
//  FirstViewController.swift
//  WeatherApp
//
//  Created by Jakub Długosz on 11.05.2016.
//  Copyright © 2016 Code Surf. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var cityNameOutlet: UILabel!
    @IBOutlet weak var tempOutlet: UILabel!
    @IBOutlet weak var weatherOutlet: UILabel!
    
    var cities = ["Austin","Dallas","Phoenix", "Portand", "San Diego"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: UITableViewDataSource
extension FirstViewController: UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = (self.cities[indexPath.row])
        return cell
    }
}

//MARK: UITableViewDelegate
extension FirstViewController: UITableViewDelegate {
    
}

