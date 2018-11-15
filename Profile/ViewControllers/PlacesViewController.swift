//
//  PlacesViewController.swift
//  Profile
//
//  Created by Mobile on 11/14/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

class PlacesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var placesArray : [Place] = Place.generatePlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "PlaceCell", bundle: nil), forCellReuseIdentifier: "PlaceCell")
    }
}

// MARK: - TableView DataSource
extension PlacesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath) as! PlaceCell
        cell.place = self.placesArray[indexPath.row]
        return cell
    }
}

// MARK: - TableView Delegate
extension PlacesViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
